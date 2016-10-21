// drawTextInput()
// Draw 3 lines of CLI
{
    draw_set_colour(c_lime);
    draw_set_font(fontCourierNew);
    
    // Test
    //draw_text(startX, startY, ". StartX: " + string(startX));
    var inputLine = "> " + userInput;
    draw_text(startX, startY, inputLine);
    if blink
    {
        var length = string_width(inputLine);
        var height = string_height(inputLine);
        
        draw_line(startX + length, startY, startX + length, startY + height);
    }
    
    // Output
    //draw_text(startX, startY + lineHeight, commandString);
    //draw_text(startX, startY + lineHeight * 2, commandResult);
    
    /*for (var i = array_length_1d(array) - 1; i >= 0; --i)
    {
        draw_text(startX, CLI_Y + lineHeight * i, string(i) + ": " +string(array[i]));
    }*/
    
    /// Draw the string and the box
    draw_set_alpha(.5);
    draw_roundrect_colour(textHistory_X, textHistory_Y, textHistory_X + textHistory_width, textHistory_Y + textHistory_height, c_black, c_black, false); // c_black, c_black
    draw_set_alpha(1);
    
    
    // Make sure we have not reached the end of the message
    if (count < string_length(message))
    {
        // Are we at a space? Set the last space var
        if (string_char_at(message, count) == " ")
        {
            
            last_space = count;
        }
        
        // Increment the count
        ++count;
    }

    if (string_width(str) > textHistory_width - padding - padding)
    {
        // Remove the space & replace it with line break
        message = string_delete(message, last_space, 1);
        message = string_insert("#", message, last_space);
        ds_list_add(start, last_space + 1);
    }
    else if (string_length(str) > 0 && prev_msg_len < string_length(message))
    {
        //message = string_insert("#", message, count - 1);
        draw_text(0, 135, "String_length" + string(string_length(str)));
        
        ds_list_add(start, count);
    }

    
    
    // Did we go past the bottom? Move up a line
    if (string_height(str) > textHistory_height - padding)
    {
        draw_text(0, 170, str);
        draw_text(0, 45, "This works!!");
        ++line;
    }
    
    // Testing
    draw_text(0, 15, "Line: " + string(line) + " and current string height: " + string(string_height(str)));

    // Grab the string
    str = string_copy(message, ds_list_find_value(start, line), count - ds_list_find_value(start, line));
    
    // Draw the text
    draw_text(textHistory_X + padding, textHistory_Y + padding, str);
    
    // Testing
    draw_text(0, 0, "Current String Height: " + string(string_height(str)));
    draw_text(0, 30, "Limit: " + string(textHistory_height - padding));
    draw_text(0, 60, "First pos: " + string(ds_list_find_value(start, line)));
    draw_text(0, 75, "Width string: " + string(count - ds_list_find_value(start, line)));
    draw_text(0, 90, "Current word count: " + string(count));
    draw_text(0, 105, "String length: " + string(string_length(str)));
    draw_text(0, 120, "size of ds_list: " + string(ds_list_size(start)));
    draw_text(0, 150, "TextHistory Line: " + string(line));
    
    //str = "";
    prev_msg_len = string_length(message);
}
