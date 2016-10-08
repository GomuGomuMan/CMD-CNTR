// addExecute(array)
{
    var params = argument[0];
    
    if (array_length_1d(params) == 3)
    {
        var num1 = real(params[1]);
        var num2 = real(params[2]);
        return add(num1, num2);
    }
    
    return "Invalid parameter count.";
}

