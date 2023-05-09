#!/usr/bin/env python3
"""
Retrieve all school that has a particular topic
"""
from pymongo import MongoClient
db = MongoClient('mongodb://127.0.0.1:27017')
collection = db.logs.nginx
methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
number_of_methos = []
# Get the number of posts in collection
for method in methods:
    number_of_methos.append(
        collection.count_documents({"method": method})
        )
# Get all logs with method equals post and path status
get_status = collection.count_documents({"method": "GET", "path": "/status"})
count = 0
print("{} logs".format(sum(number_of_methos)))
print("Methods:")
for method in methods:
    print("\tmethod {}: {}".format(method, number_of_methos[count]))
    count = count + 1
print("{} status check".format(get_status))
