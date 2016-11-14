import os
import random
from itertools import izip

if __name__ == "__main__":
	for first, last in izip(open("first.txt"), open("last.txt")):
		os.makedirs("../PERSON_DATABASE/{}".format('_'.join([first.split()[0], last.split()[0], str(random.randrange(0,1000))])))