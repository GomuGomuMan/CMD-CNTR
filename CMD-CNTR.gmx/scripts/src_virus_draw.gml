draw_set_colour(c_red);
draw_set_font(fontCourierNew);

/// Draw the string and the box
draw_set_alpha(.5);
draw_roundrect_colour(x, y, x + width, y + height, c_black, c_black, false); // c_white, c_white
draw_set_alpha(1);

// Set color to white
//draw_set_color(c_white);

// Past width?
// Insert line break
// This has to be before getting the last_space var or it won't work right
if (string_width(str) > width - padding - padding)
{
    // Remove the space & replace it with line break
    message = string_delete(message, last_space, 1);
    message = string_insert("#", message, last_space);
    ds_list_add(start, last_space + 1);
    
}
else if (string_length(str) > 0 && prev_msg_len < string_length(message))
{
    //message = string_insert("#", message, count - 1);
    //draw_text(0, 135, "String_length" + string(string_length(str)));
    
    ds_list_add(start, count);
}
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

// Did we go past the bottom? Move up a line
if (string_height(str) > height - padding)
{
    ++line;
}

// Grab the string
str = string_copy(message, ds_list_find_value(start, line), count-ds_list_find_value(start, line));


// Draw the text
draw_text(x + padding, y + padding, str);

// Testing
//draw_text(200, 0, "Textbox Length: " + string(line));
prev_msg_len = string_length(message);

