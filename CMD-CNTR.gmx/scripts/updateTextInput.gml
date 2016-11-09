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
        
        pause = false;
        alarm[1] = pause_speed;
        
        //show_message(cli_ds_line_size - ds_queue_size(cli_ds_line));
        src_process_script();
        
        commandString = userInput;
        runCommand(userInput);
        clearUserInput();
    }
}
