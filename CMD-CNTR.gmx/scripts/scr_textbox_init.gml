// Create some variables
width = 672;
height = 160;
padding = 8;

// Test bool
ok_first_print = false;

// Create a queue
cli_ds_line = ds_queue_create();

// Keep track of the starting line
start = ds_list_create();
ds_list_add(start, 0);

// Keep track of the last space and current position
count = 0;
last_space = 0;
line = 0;

// Set the message
//message = "This is a very long long long long long long long long long long long string and this is to check if the long long long long long long long string actually works";
message = "";
str = "";

// Set color and font
draw_set_colour(c_lime);
draw_set_font(fontCourierNew);

