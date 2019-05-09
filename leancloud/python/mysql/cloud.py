# coding: utf-8

from leancloud import Engine
from leancloud import LeanEngineError

engine = Engine()

import os
app_env = os.environ['LEANCLOUD_APP_ENV']

@engine.define
def hello(**params):
    if 'name' in params:
        return 'Hello, {}!'.format(params['name'])
    else:
        return app_env


@engine.before_save('Todo')
def before_todo_save(todo):
    content = todo.get('content')
    if not content:
        raise LeanEngineError('内容不能为空')
    if len(content) >= 240:
        todo.set('content', content[:240] + ' ...')
