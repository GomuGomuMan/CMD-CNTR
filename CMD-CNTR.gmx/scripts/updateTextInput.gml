// updateTextInput()
{
    // Check if CLI is at beginning state or beginnning of different state
    // If true print head of queue

    //userInput = string_replace_all(keyboard_string, "#", "\#");
    userInput = keyboard_string;
    
    if (userInput == "puzzle1")
    {
        room_goto(room_puzzle1);
    }
    
    else if (userInput = "puzzle3")
    {
        room_goto(room_puzzle3);
    }
    
    else if (keyboard_check_pressed(vk_enter) && pause)
    {
        message += ">" + userInput + "#";
        
        //show_message(cli_ds_line_size - ds_queue_size(cli_ds_line));
        // Trick: LINE_NUM + 1
        switch (cli_ds_line_size - ds_queue_size(cli_ds_line))
        {
            // Save player_name and print changed queue head
            case 4:
                //show_message("HERE");
                player_name = userInput;
                print_dialog();
                break;
            
            // Check to see if player is joking
            case 6:
                //TODO: does it need regex?
                var tempStr = string_lower(userInput);
                if (string_pos('y', tempStr) != 0 || string_pos('yes', tempStr) != 0)
                    isJoking = false;
                    
                print_dialog();
                break;
            
            // If joking, ask for name again
            case 8:
                if (isJoking)
                {
                    print_dialog();
                    break;
                }
                else
                {
                    ds_queue_dequeue(cli_ds_line); // Skip this line
                    ds_queue_dequeue(cli_ds_line); // Skip user input line
                }
                    
                
            case 10:
                if (isJoking)
                    player_name = userInput;
                    
                print_dialog();
                break;
                
            case 17:
                if (userInput != "open instructions.txt")
                {
                    ++numIncorrectCommand;
                    if (numIncorrectCommand >= 2)
                    {
                        print_dialog();
                    }
                }
                else 
                {
                    ds_queue_dequeue(cli_ds_line); // Skip this line
                    ds_queue_dequeue(cli_ds_line); // Skip user input line
                    //print_dialog();
                }
                
                break;
            
            case 19:
                show_message(string_length(userInput));
                show_message(string_length(ds_queue_head(cli_ds_line)));
                if (userInput == "open instructions.txt")
                {
                    //show_message("HERE");
                    var file = file_text_open_read(working_directory + "instructions.txt");
                    while(!file_text_eof(file))
                    {
                        message += file_text_read_string(file) + "#";
                        file_text_readln(file)
                    }
                    file_text_close(file);
                       
                    ds_queue_dequeue(cli_ds_line); // Skip this line
                    ds_queue_dequeue(cli_ds_line); // Skip user input line
                }
                break;
                
            default:
                //show_message(cli_ds_line_size - ds_queue_size(cli_ds_line));
                if (ds_queue_size(cli_ds_line) > 0)
                    print_dialog();
                //show_message("");
                break;
        }
        
        commandString = userInput;
        runCommand(userInput);
        clearUserInput();
        alarm[1] = pause_speed;
    }
}
