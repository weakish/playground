# coding: utf-8

import leancloud
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
        leancloud.use_production(os.environ['LEANCLOUD_APP_ENV'] == 'production')
        leancloud.init("3AJTBW5QyGw17hLxNN3njGHW-gzGzoHsz", "P8cKdEvRxusfuR27MuhvFOzr")
        todo = leancloud.Object.extend('Todo')()
        todo.set('content', '')
        todo.save()
        return app_env


@engine.before_save('Todo')
def before_todo_save(todo):
    content = todo.get('content')
    if not content:
        todo.set('content', 'stage')
    if len(content) >= 240:
        todo.set('content', content[:240] + ' ...')

@engine.before_update('_User')
def check_email(user):
    if 'email' not in user.updated_keys:
        return
    if "@example.com" not in user.get('email'):
        raise leancloud.LeanEngineError(message=('暂不支持该 Email 服务提供商'))


@engine.before_update('AComment')
def likes_must_not_be_negative(a_comment):
    if 'likes' not in a_comment.get('_updatedKeys'):
        return
    if a_comment.get('likes') < 0:
        raise leancloud.LeanEngineError(message=('likes 属性不支持负数'))


"""
@engine.after_update('AComment')
def likes_must_not_be_negative(a_comment):
    if 'likes' not in a_comment.updated_keys:
        return
    if a_comment.get('likes') < 0:
        a_comment.set('likes', 0)
        a_comment.save()
"""