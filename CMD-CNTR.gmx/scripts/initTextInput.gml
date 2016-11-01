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
    textHistory_height = 640; // 640 // Testing = 30
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
    prev_msg_len = 0;
    
    // Set the current message
    message = "";
    str = "";
    
    // Save player_name
    player_name = "";
    
    // Var to check if player is joking
    isJoking = true;
    
    // Create a queue
    cli_ds_line = ds_queue_create();
    
    // Read from text files
    // Store in data structure
    var file = file_text_open_read(working_directory + "Terminal Window.txt")
    
    while(!file_text_eof(file))
    {
        ds_queue_enqueue(cli_ds_line, file_text_read_string(file) + "#");
        //show_message(file_text_read_string(file));
        file_text_readln(file)
    }
    //show_message(ds_queue_head(cli_ds_line));
    //show_message(string(ds_queue_size(cli_ds_line)));
    file_text_close(file);
    
    cli_ds_line_size = ds_queue_size(cli_ds_line); 
    
    message += ds_queue_head(cli_ds_line);
    ds_queue_dequeue(cli_ds_line);
    
}
