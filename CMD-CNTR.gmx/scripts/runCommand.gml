// runCommand(command)
{
    var command = argument[0];
    
    // Split string to words
    var array = stringSplit(command, " ");
    
    var i = 1;
    // Lowercase for command
    array[0] = string_lower(array[0]);
    while (i < array_length_1d(array))
    {
        //show_message("HERE");
        array[i] = string_replace_all(array[i], "/", "\");
        //array[i] = string_upper(array[i]);
        ++i;
    }
    
    if (string_length(array[0]) > 0)
    {
        // Function specific operation
        if (string_char_at(array[0], 1) == "/")
        {
            array[0] = string_delete(array[0], 1, 1); // Delete the '/' char
        }
        
        var scriptIndex = asset_get_index(array[0] + "Execute"); // Execute "Command+Execute" script
            
        if(script_exists(scriptIndex))
            commandResult = string(script_execute(scriptIndex, array)); // Execution
        else
            commandResult = "Unknown command.";
    }
    
    return commandResult;
}
