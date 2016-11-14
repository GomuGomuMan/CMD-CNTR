import os
import re

if __name__ == "__main__":
	with open("loc.txt", 'r') as f:
		for line in f:
			if len(line.split()) > 1:
				name = line.split()[0].upper()
				name = name.strip('\"-,')
				dir = "../LOCATION_DATABASE/{}".format(name)
				if not os.path.exists(dir):
					os.makedirs(dir)
	os.makedirs("../LOCATION_DATABASE/NEVULA")