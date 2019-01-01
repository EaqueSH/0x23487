import requests

file = open("liste1.txt", "r")

for line in file:
	r = requests.get("http://"+line)
	print(r.status_code)
