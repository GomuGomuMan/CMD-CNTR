{
    var params = argument[0];
    
    if (array_length_1d(params) == 3)
    {
        return cp(params[1], params[2]);
    }
    
    return "Invalid parameter count.";
}
