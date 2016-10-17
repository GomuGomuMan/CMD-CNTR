// initTextInput()
{  
    array[0] = "";
    counter = 0;
    textlimit = 10;

    userInput = "";
    commandString = "";
    commandResult = "";
    
    enabled_keys = "ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890";
    
    
    // Blink Settings
    blink = true;
    blink_speed = 15;
    alarm[0] = blink_speed;
    
    // Drawing Position for textinput
    startX = 800; // 10
    startY = 704; // 10
    
    // Drawing Position for History
    CLI_Y = 32;
    
    
    lineHeight = string_height(">");
    
    
    
    /// TextBox
    // Create some variables
    textHistory_width = 416;
    textHistory_height = 640;
    textHistory_X = 800;
    textHistory_Y = 32;
    padding = 8;
    
    // Keep track of the starting line
    start = ds_list_create();
    ds_list_add(start, 0);
    
    // Keep track of the last space and current position
    count = 0;
    last_space = 0;
    line = 0;
    
    // Set the current message
    message = "Hello World!";
    str = "";
}
