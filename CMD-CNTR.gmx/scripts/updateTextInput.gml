// updateTextInput()
{
    if (keyboard_check_pressed(vk_enter))
    {
        keyboard_string += chr(13);
    }
    userInput = string_replace_all(keyboard_string, "#", "\#");
}
