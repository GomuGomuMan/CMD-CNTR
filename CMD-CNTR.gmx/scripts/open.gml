// open(string)
{
    //var file_name = argument[0];
    
    var file_name = str_extract(argument[0]);
    
    if (file_exists(working_directory + file_name))
    {
        var file = file_text_open_read(working_directory + file_name);
        while(!file_text_eof(file))
        {
            message += file_text_read_string(file) + "#";
            file_text_readln(file)
        }
        file_text_close(file);
    }
    
    
}
