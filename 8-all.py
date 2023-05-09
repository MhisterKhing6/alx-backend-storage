#! /usr/bin/env python3
"""
List all documents in a mongo db collection

"""
def list_all(mongo_collection):
    """
    list-all : List all documents in a mongo collection
    mongo_collection : Mongo collection in a db
    """
    return mongo_collection.find()
