import os

if __name__ == "__main__":
    folders = ["backups", "AGRICULTURAL", "COMMERCIAL", 
        "RESIDENTIAL", "MEDICAL", "EDUCATIONAL", "GOVERNMENT", 
        "INDUSTRIAL", "MILITARY", "PARKING", "RELIGIOUS",
        "TRANSPORT", "INFRASTRUCTURE", "POWER"]
    rootdir = '../LOCATION_DATABASE/'
    for subdir in os.walk(rootdir):
        for f in folders:
            dir = subdir[0] + '/' + f
            if not os.path.exists(dir):
                os.makedirs(dir)
    os.makedirs(rootdir + "NEVULA/INFRASTRUCTURE/NetworkTower")
    os.makedirs(rootdir + "NEVULA/backups/NetworkTower")