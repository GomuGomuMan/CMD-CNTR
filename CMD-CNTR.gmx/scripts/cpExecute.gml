{
    var params = argument[0];
    
    if (array_length_1d(params) == 3)
    {
        return cp(params[1]);
    }
    
    return "Invalid parameter count.";
}
