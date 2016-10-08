// initTextInput()
{  
    array[0] = "";
    counter = 0;

    userInput = "";
    commandString = "";
    commandResult = "";
    
    enabled_keys = "ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890";
    
    
    // Blink Settings
    blink = true;
    blink_speed = 15;
    alarm[0] = blink_speed;
    
    // Drawing Position for textinput
    startX = 800; // 10
    startY = 704; // 10
    
    // Drawing Position for History
    CLI_Y = 32;
    
    
    lineHeight = string_height(">");
}
