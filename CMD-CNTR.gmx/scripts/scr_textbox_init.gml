// Create some variables
width = 240;
height = 240;
padding = 8;

// Keep track of the starting line
start = ds_list_create();
ds_list_add(start, 0);

// Keep track of the last space and current position
count = 0;
last_space = 0;
line = 0;

// Set the message
message = "This is a very long long long long long long long long long long long string";
str = "";

