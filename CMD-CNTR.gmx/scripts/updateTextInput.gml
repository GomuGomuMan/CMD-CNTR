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
    
    else if (keyboard_check_pressed(vk_enter))
    {
        message += ">" + userInput + "#";
        
        
        switch (cli_ds_line_size - ds_queue_size(cli_ds_line))
        {
            // Save player_name and print changed queue head
            case 2:
                player_name = userInput;
                var tempStr = string_replace(ds_queue_head(cli_ds_line), 'PLAYER_NAME', player_name);
                message += tempStr;
                ds_queue_dequeue(cli_ds_line);
                break;
            
            // Check to see if player is joking
            case 3:
                //TODO: does it need regex?
                var tempStr = string_lower(userInput);
                if (string_pos('y', tempStr) != 0 || string_pos('yes', tempStr) != 0)
                    isJoking = false;
                    
                message += ds_queue_head(cli_ds_line);
                ds_queue_dequeue(cli_ds_line);
                break;
            
            // If joking, ask for name again
            case 4:
                if (isJoking)
                {
                    message += ds_queue_head(cli_ds_line);
                    ds_queue_dequeue(cli_ds_line);
                    break;
                }
                else
                    ds_queue_dequeue(cli_ds_line);
                
            case 5:
                if (isJoking)
                    player_name = userInput;
                //show_message(ds_queue_head(cli_ds_line));
                //show_message(player_name);
                message += ds_queue_head(cli_ds_line);
                ds_queue_dequeue(cli_ds_line);
                message += ds_queue_head(cli_ds_line);
                ds_queue_dequeue(cli_ds_line);
                break;
                
            default:
                if (ds_queue_size(cli_ds_line) > 0)
                {
                    message += ds_queue_head(cli_ds_line);
                    ds_queue_dequeue(cli_ds_line);
                }
                break;
        }
        
        // Testing
        /*if (!isJoking)
            show_message("Joking indeed!");*/
        
        
        commandString = userInput;
        runCommand(userInput);
        clearUserInput();
    }
}
