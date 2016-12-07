// updateTextInput()
{
    if alarm[2] == -1 
    {
        alarm[2] = room_speed * 1;
    }

    // Check if CLI is at beginning state or beginnning of different state
    // If true print head of queue

    // print ok?
    print_ok = false;
    
    //userInput = string_replace_all(keyboard_string, "#", "\#")
    if (string_width(userInput) < (textHistory_width - padding - padding) / scale
        || keyboard_check_pressed(vk_backspace))
        userInput = keyboard_string;
    else
        keyboard_string = userInput;
    
    if (userInput == "puzzle1" && keyboard_check_pressed(vk_enter))
    {
        room_goto(room_puzzle1);
    }
    else if (userInput == "puzzle2" && keyboard_check_pressed(vk_enter))
        room_goto(room_puzzle2);
    else if (userInput = "puzzle3" && keyboard_check_pressed(vk_enter))
    {
        room_goto(room_puzzle3);
    }
    
    //else if ((keyboard_check_pressed(vk_enter) && userInput != "" && pause && ifDonePrinting) || global.cont)
    //else if ((keyboard_check_pressed(vk_enter) && userInput != "" && pause)
    //   || global.cont)
    else if ((keyboard_check_pressed(vk_enter) && userInput != "" && pause && ifDonePrinting) || global.cont)
    {
        message += ">" + userInput + "#";
        
        pause = false;
        alarm[1] = pause_speed;
        
        // Reset command_result
        command_result = "";
        // Set command result
        command_result = runCommand(userInput);
        
        //show_message(cli_ds_line_size - ds_queue_size(cli_ds_line));
        
        if (!isFinishedPart1)
            src_process_script();
            
        if (ds_exists(cli_ds_line, ds_type_queue)
            && cli_ds_line_size - ds_queue_size(cli_ds_line) >= 21
            && if_cli_done)
        {
            //show_message("HERE");
            isFinishedPart1 = true;
            
            ds_queue_copy(obj_cli_textbox.cli_ds_line, cli_ds_line);
            ds_queue_destroy(cli_ds_line);
            print_ok = true;
            //ifDonePrinting = false;
            obj_cli_textbox.ok_first_print = true;
        }
        
        else
        {
            tempInput = userInput;
            print_ok = true;
        }
        
        
        
        commandString = userInput;
        //runCommand(userInput);
        clearUserInput();
    }
}
