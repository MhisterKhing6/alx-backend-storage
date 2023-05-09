#!/usr/bin/env python3
"""
Change the topic of name to to topics
"""


def update_topics(mongo_collection, name, topics):
    """
    update_topics : Update the collections of topics
    name : The name to change the topic
    topics : the topic to change the name
    """
    return mongo_collection.update_many(
        {'name': name}, {'$set': {'topics': topics}}
        )
