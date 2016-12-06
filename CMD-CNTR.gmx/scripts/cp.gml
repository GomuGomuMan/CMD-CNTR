{
    var src = argument[0];
    var dest = argument[1];
    
    var src_dir = current_dir + "\" + src;
    var dest_dir = current_dir + "\" + dest;
    
    
    //show_message(file_name);
    
    
    if (ds_list_find_index(file_sys, src_dir) > -1 && ds_list_find_index(file_sys, dest_dir) > -1)
    {
        show_message(src_dir);
        show_message(dest_dir);
        
        var file_name = src;
        if (string_pos("\", src) != 0)
        {
            var i = find_last_backSlash(src);
            file_name = string_copy(src, i + 1, string_length(src) - i + 1);
        }
        
        
        directory_create(dest_dir + "\" + file_name);
        
    }
    return "cp Executed";
}
