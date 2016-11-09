// openExecute(array)
{
    var params = argument[0];
    if (array_length_1d(params) == 2)
    {
        return open(params[1]);
    }
    
    return "Invalid parameter count.";
}
