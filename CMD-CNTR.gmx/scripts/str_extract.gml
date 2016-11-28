/// str_extract(str, index)
{
    var result = argument[0]
    var length = string_length(result);
    
    if ((string_char_at(result, 0) = "'" && string_char_at(result, length) = "'")
        || (string_char_at(result, 0) = '"' && string_char_at(result, length) = '"'))
    {
        result = string_delete(result, 1, 1);
        result = string_delete(result, string_length(result), 1);
        //result = string_delete(str, length, 1);
        show_message("HERE");
        show_message(result);
    }
    
    return result;
}

