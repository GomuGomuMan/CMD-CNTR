{
    // Trick: LINE_NUM + 1
    switch (objTextInput.cli_ds_line_size - ds_queue_size(cli_ds_line))
    {
        // Save player_name and print changed queue head
        case 4:
            player_name = userInput;
            print_dialog();
            break;
        
        case 8:
            player_name = userInput;
            print_dialog();
            break;
            
        case 14:
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
        
        case 21:
            // Test
            if (objTextInput.ifDonePrinting)
            {
                if_cli_done = true;
                src_show_world();
                //print_dialog();
            }
            
            if (obj_cli_textbox.ok_first_print)
                print_dialog();
            
            
            break;
            /*src_show_world();
            print_dialog();
            break;*/
            
        case 36:
            if (objTextInput.command_result == "ls Executed")
                print_dialog();
            break;
            
        case 38:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE")
            {
                // Comment out for test
                //&& objTextInput.command_result == "ls Executed")
                print_dialog();
            }
                
            break;
        
        case 40:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE\NEVULA" && 
                objTextInput.command_result == "ls Executed")
                print_dialog();
            break;
            
        case 42:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE\NEVULA\INFRASTRUCTURE" && 
                objTextInput.command_result == "ls Executed")
                print_dialog();
            break;
            
        case 44:
            if (objTextInput.command_result == "cp Executed")
                print_dialog();
            break;
            
        case 46:
            test = true;
            if (objTextInput.command_result == "cp Executed")
                print_dialog();
            break;
                        
        default:
            //show_message(cli_ds_line_size - ds_queue_size(cli_ds_line));
            if (ds_queue_size(cli_ds_line) > 0)
                print_dialog();
            //show_message("");
            break;
    }
}
