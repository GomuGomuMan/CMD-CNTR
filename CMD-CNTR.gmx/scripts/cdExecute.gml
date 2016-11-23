{
    var params = argument[0];
    show_message(params);
    if (array_length_1d(params) == 2 || array_length_1d(params) == 3)
    {
        return cd(params[1]);
    }
    
    return "Invalid parameter count.";
}
