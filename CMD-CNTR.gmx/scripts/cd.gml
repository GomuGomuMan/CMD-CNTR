{
    if (argument[0] == ".." && string_length(current_dir) > 4) // Only executes this case when there's more than "HOME"
    {
        // Get start pos to delete
        var i = string_length(current_dir) - 1;
        var isFound = false;
        while(i >= 0 && !isFound)
        {
            if (string_char_at(current_dir, i) == "\")
            {
                isFound = true;
                current_dir = string_delete(current_dir, i, string_length(current_dir) - i + 1);
                message += "Current directory: " + current_dir + "#";
            }
            else            
                --i;
        }
    }
    else
    {
        var dest_dir = current_dir + "\" + argument[0];
        //show_message(dest_dir);
        //show_message(ds_list_size(file_sys))
        if (ds_list_find_index(file_sys, dest_dir) > -1)
        {
            message += "Current directory: " + dest_dir + "#";
            current_dir = dest_dir;
        }
    }
    
}
