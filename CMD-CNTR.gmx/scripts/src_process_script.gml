{
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
            if (userInput == "ztel access mainframe")
            {
                print_dialog();   
            }
            break;
            
        case 21:
            if (userInput == "asdf jkl")
            {
                print_dialog();   
            }
            break;
        
        case 26:
            src_show_world();
            break;
            
        default:
            //show_message(cli_ds_line_size - ds_queue_size(cli_ds_line));
            if (ds_queue_size(cli_ds_line) > 0)
                print_dialog();
            //show_message("");
            break;
    }
}
