#!/usr/bin/env python
"""
Creat a redis class for connection and loading
"""
import uuid
from typing import Union, Callable, Any
import redis


class Cache(object):
    """
    A Class that instantiates Redis instance
    """

    def __init__(self) -> None:
        """
        Instantiate instance to a private variable
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, int, float, bytes]) -> str:
        """
            store: Store data in redis
            args: data to store
        """
        key = str(uuid.uuid1())
        self._redis.set(key, data)
        return key

    def get(self, key, fn=None) -> Any:
        """
        Return the value for a Redis database
        """
        value = self._redis.get(key)
        if value:
            if fn:
                return fn(self._redis.get(key))
        return value

    def get_str(self, key: Union[str, int, float, bytes]) -> str:
        """Get value as string"""
        return self.get(key, str)

    def get_int(self, key: Union[str, int, float, bytes]) -> int:
        """Get value as integer """
        return self.get(key, int)
