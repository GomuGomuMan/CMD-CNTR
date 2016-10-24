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
        message += userInput + "#";
    
        if (ds_queue_size(cli_ds_line) > 0)
        {
            message += ds_queue_head(cli_ds_line);
            ds_queue_dequeue(cli_ds_line);
        } 
        
        
        
        commandString = userInput;
        runCommand(userInput);
        clearUserInput();
    }
}
