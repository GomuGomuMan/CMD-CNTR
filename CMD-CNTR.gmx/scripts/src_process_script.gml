{
    // Trick: LINE_NUM + 1
    switch (objTextInput.cli_ds_line_size - ds_queue_size(cli_ds_line))
    {    
        // Save player_name and print changed queue head
        case 4:
            player_name = userInput;
            print_dialog();
            break;
            
        case 12:
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
            
        case 14:
            if (userInput == "ztel access mainframe")
            {
                print_dialog();   
            }
            break;
        
        case 19:
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
            
        case 28:
            if (global.isFinishedPuzzle1)
            {
                print_dialog();
            }
            break;
            
        case 33:
            if (objTextInput.userInput != "open cmd1.txt")
            {
                print_dialog();
            }
            break;
            
        case 35:
            if (objTextInput.command_result == "ls Executed")
                print_dialog();
            break;
            
        case 37:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE"
                && objTextInput.command_result == "ls Executed")
            {
                // Comment out for test
                //&& objTextInput.command_result == "ls Executed")
                print_dialog();
            }
                
            break;
        
        case 39:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE\NEVULA" && 
                objTextInput.command_result == "ls Executed")
                print_dialog();
            break;
            
        case 41:
            if (objTextInput.current_dir = "HOME\LOCATION_DATABASE\NEVULA\INFRASTRUCTURE" && 
                objTextInput.command_result == "ls Executed")
            {
                print_dialog();
                objTextInput.scale = .8;
            }
                
            break;
            
        case 43:
            if (objTextInput.command_result == "cp Executed")
                print_dialog();
            break;
            
        case 45:
            //test = true;
            if (objTextInput.command_result = "cp Executed")
                ++objTextInput.count_cp;
                
            if (objTextInput.count_cp >= 2)
            {
                print_dialog();
                objTextInput.scale = 1;
                src_set_building(1);
            }
                
            break;

        case 53:
            if (objTextInput.userInput != "open cmd2.txt")
            {
                print_dialog();
            }
            break;
        
        // Start puzzle3
        case 55:
            if (global.isFinishedPuzzle3)
            {
                src_set_building(2);
                print_dialog();
            }   
            else
                room_goto(room_puzzle3);
                
            //print_dialog();
            break;
        
        case 61:
            if (objTextInput.userInput != "open cmd3.txt")
            {
                print_dialog();
            }
            break;
            
        case 63:
            if (global.isFinishedPuzzle2)
            {
                obj_cli_virus.visible = false;
                src_set_building(0);
                print_dialog();
            }   
            else if(ds_list_size(objTextInput.process_list) < objTextInput.process_list_size)
                room_goto(room_puzzle2);
            break;
        
        // Start puzzle2
        /*case 72:
            if (global.isFinishedPuzzle2)
            {
                src_set_building(0);
                print_dialog();
            }   
            else
                room_goto(room_puzzle2);
            break;*/
            
        case 78:
            src_clear_cli();
            src_hide_world();
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
