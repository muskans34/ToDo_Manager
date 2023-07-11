import pymongo
client = pymongo.mongo_client("mongodb://127.0.0.1/")
db = client['test']
collection = db['practice']
data = collection.find()
for i in data:
    print(i)

