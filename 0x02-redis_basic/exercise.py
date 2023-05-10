#!/usr/bin/env python
"""
Creat a redis class for connection and loading
"""
from uuid import uuid4
from typing import Union
import redis


class Cache(object):
    """
    A Class that instantiates Redis instance
    """

    def __init__(self):
        """
        Instantiate instance to a private variable
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data) -> str:
        """
            store: Store data in redis
            args: data to store
        """
        key = str(uuid4())
        self._redis.set(key, data)
        return key
