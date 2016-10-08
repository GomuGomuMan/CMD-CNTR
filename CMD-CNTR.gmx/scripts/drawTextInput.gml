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
    
    for (var i = array_length_1d(array) - 1; i >= 0; --i)
    {
        draw_text(startX, CLI_Y + lineHeight * i, string(i) + ": " +string(array[i]));
    }
}
