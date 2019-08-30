import os 
import http.client
# current file directory
dir_path = os.path.dirname(os.path.realpath(__file__)) + "/out"

# find every html file in out directory
# for root, directory, files in os.walk(dir_path):
# 	for file in files:
# 		if ".html" in file:
# 			print(file)
conn = http.client.HTTPConnection("skullsplitter,myshopify,com")

payload = """
	{
		\"page\": {
			\"title\": \"Classes\", 
			\"body_html\": \"<p>this is a test</p>\"    
		}
	}
"""

headers = {
    'Content-Type': "application/json",
    'User-Agent': "PostmanRuntime/7.15.2",
    'Accept': "*/*",
    'Cache-Control': "no-cache",
    'Postman-Token': "797af2a3-f914-483f-bb9a-a48b8a18188c,5f98a81f-a0b9-43d3-8037-245d2dd87919",
    'Host': "skullsplitter.myshopify.com",
    'Cookie': "__cfduid=d91e04ac2d817ed0e97235c00bde113d41566501163",
    'Accept-Encoding': "gzip, deflate",
    'Authorization': "Basic MDk5NjJmMmQ2ZGNmNjFmMzU4YzFjNjAxYTY3MDAwM2I6YzY0MTRlZDU5ZmRmODZjOWExNGMxNTYzMDJjYmI0ODk=",
    'Content-Length': "542",
    'Connection': "keep-alive",
    'cache-control': "no-cache"
    }

conn.request("POST", "admin,api,2019-07,pages.json", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))		





