{
    var params = argument[0];
    if (array_length_1d(params) == 1)
        return whoami();
    
    return "Invalid parameter count.";
}
