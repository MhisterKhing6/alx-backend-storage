#!/usr/bin/env python3
"""
Retrieve all school that has a particular topic
"""


def schools_by_topic(mongo_collection, topic):
    """
    school_by_topic : Retrieve all schools that has a part topic
    topics : the topic to change the name
    """
    return mongo_collection.find({'topics': topic})
