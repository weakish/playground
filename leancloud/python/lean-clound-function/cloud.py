# coding: utf-8

from leancloud import Engine
from leancloud import LeanEngineError
import leancloud

engine = Engine()


@engine.define
def hello(**params):
    if 'name' in params:
        return 'Hello, {}!'.format(params['name'])
    else:
        return 'Hello, LeanCloud!'

@engine.define
def saveFeedbackGame():
    Feedback_game = leancloud.Object.extend('feedback_game')
    feedback_game = Feedback_game()
    feedback_game.set('gameName', '1111')
    feedback_game.save()

@engine.before_save('Todo')
def before_todo_save(todo):
    content = todo.get('content')
    if not content:
        raise LeanEngineError('内容不能为空')
    if len(content) >= 240:
        todo.set('content', content[:240] + ' ...')
