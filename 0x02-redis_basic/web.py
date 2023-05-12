#!/usr/bin/env python3
''' A catching modeul
'''
import redis
import requests
from functools import wraps
from typing import Callable


redis_store = redis.Redis()


def cacher(method: Callable) -> Callable:
    """
    store the output data
    """
    @wraps(method)
    def invk(url) -> str:
        """
        Wrapper for catching outpus
        """
        redis_store.incr(f'count:{url}')
        result = redis_store.get(f'result:{url}')
        if result:
            return result.decode('utf-8')
        result = method(url)
        redis_store.set(f'count:{url}', 0)
        redis_store.setex(f'result:{url}', 10, result)
        return result
    return invk


@cacher
def get_page(url: str) -> str:
    """
    get the result of a page
    """
    return requests.get(url).text
