if (string_count(chr(keyboard_key), enabled_keys)) and (string_length(chr(keyboard_key)) == 1)
{
    blink = true;
    alarm[0] = blink_speed;
}
