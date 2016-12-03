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
            
        case 16:
            if (userInput == "ztel access mainframe")
            {
                print_dialog();   
            }
            break;
        
        case 21:
            // Test
            if (objTextInput.ifDonePrinting)
            {
                if_cli_done = true;
                src_show_world();
                src_show_js_textbox();
                //print_dialog();
            }
            
            if (obj_cli_textbox.ok_first_print)
                print_dialog();
            
            
            break;
            /*src_show_world();
            print_dialog();
            break;*/
            
        case 30:
            if (global.isFinishedPuzzle1)
            {
                print_dialog();
            }
            break;
            
        case 35:
            if (objTextInput.userInput != "open cmd1.txt")
            {
                print_dialog();
            }
            break;
            
        case 37:
            if (objTextInput.command_result == "ls Executed")
                print_dialog();
            break;
            
        case 39:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE"
                && objTextInput.command_result == "ls Executed")
            {
                // Comment out for test
                //&& objTextInput.command_result == "ls Executed")
                print_dialog();
            }
                
            break;
        
        case 41:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE\NEVULA" && 
                objTextInput.command_result == "ls Executed")
                print_dialog();
            break;
            
        case 43:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE\NEVULA\INFRASTRUCTURE" && 
                objTextInput.command_result == "ls Executed")
                print_dialog();
            break;
            
        case 45:
            if (objTextInput.command_result == "cp Executed")
                print_dialog();
            break;
            
        case 47:
            //test = true;
            if (objTextInput.command_result == "cp Executed")
                print_dialog();
            break;

        case 55:
            if (objTextInput.userInput != "open cmd2.txt")
            {
                print_dialog();
            }
            break;
        
        // Start puzzle3
        case 60:
            if (global.isFinishedPuzzle3)
            {
                print_dialog();
            }   
            else
                
                room_goto(room_puzzle3);
                
            //print_dialog();
            break;
        
        case 67:
            if (objTextInput.userInput != "open cmd3.txt")
            {
                print_dialog();
            }
            break;
            
        case 69:
            if(ds_list_size(objTextInput.process_list) < objTextInput.process_list_size)
                print_dialog();
            break;
        
        // Start puzzle2
        case 72:
            if (global.isFinishedPuzzle2)
            {
                print_dialog();
            }   
            else
                room_goto(room_puzzle2);
            break;
            
        case 87:
            //src_clear_cli();
            //src_hide_world();
            //instance_deactivate_object(obj_cli_virus);
            print_dialog();
            break;
            
        default:
            //show_message(cli_ds_line_size - ds_queue_size(cli_ds_line));
            if (ds_queue_size(cli_ds_line) > 0)
                print_dialog();
            //show_message("");
            break;
    }
    
    if (global.cont)
        global.cont = false;
}
