#!/usr/bin/env python3
""" Return the most highly student with avr score"""


def top_students(mongo_collection):
    """
    Select the averg student
    """
    reult = mongo_collection.aggregate([
        {"$project": {
            "name": "$name",
            "averageScore": {"$avg": "$topics.score"}
        }},
        {"$sort": {"averageScore": -1}}
    ])
