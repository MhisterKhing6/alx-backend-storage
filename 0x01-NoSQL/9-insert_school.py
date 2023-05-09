#!/usr/bin/env python3
"""
insert data into the mongodb collection
"""


def insert_school(mongo_collection, **kwargs):
    """
    list-all : List all documents in a mongo collection
    mongo_collection : Mongo collection in a db
    """
    return mongo_collection.insert(kwargs)
