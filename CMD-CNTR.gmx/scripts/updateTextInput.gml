// updateTextInput()
{
    
    userInput = string_replace_all(keyboard_string, "#", "\#");
    
    if (keyboard_check_pressed(vk_enter))
    {
        array[counter] = userInput;
        ++counter;
        
        commandString = userInput;
        runCommand(userInput);
        clearUserInput();
    }
}
