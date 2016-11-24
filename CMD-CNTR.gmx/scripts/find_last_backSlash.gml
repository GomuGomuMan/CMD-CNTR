///find_last_backSlash(str)
///Return back lash pos
{
    var str = argument[0];
    var i = string_length(str) - 1;
    var isFound = false;
    while (i >= 0  && !isFound)
    {
        if (string_char_at(str, i) == "\")
            isFound = true;
        else
            --i;
    }
    return i;
}
