import sys
import os
import random


if __name__ == "__main__":
	num = int(sys.argv[1])

	l = []
	for root, directories, filenames in os.walk('../ARCHITECTURE'):
		for filename in filenames: 
			l.append(os.path.join(root,filename))

	for root, directories, filenames in os.walk('../SECURITY'):
		for filename in filenames: 
			l.append(os.path.join(root,filename))

	for i in range(0, num):
		r = random.choice(l)
		os.rename(r, os.path.dirname(r) + "/fun_" + os.path.basename(r))