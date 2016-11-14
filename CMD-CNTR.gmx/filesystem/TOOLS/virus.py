import sys
import os
import random


def walklevel(some_dir, level=1):
    some_dir = some_dir.rstrip(os.path.sep)
    assert os.path.isdir(some_dir)
    num_sep = some_dir.count(os.path.sep)
    for root, dirs, files in os.walk(some_dir):
        yield root, dirs, files
        num_sep_this = root.count(os.path.sep)
        if num_sep + level <= num_sep_this:
            del dirs[:]


if __name__ == "__main__":
	num = int(sys.argv[1])

	l = []
	for root, directories, filenames in walklevel('../ARCHITECTURE'):
		for filename in filenames: 
			l.append(os.path.join(root,filename))

	for root, directories, filenames in walklevel('../SECURITY'):
		for filename in filenames: 
			l.append(os.path.join(root,filename))

	for i in range(0, num):
		r = random.choice(l)
		os.rename(r, os.path.dirname(r) + "/fun_" + os.path.basename(r))