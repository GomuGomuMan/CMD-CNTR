{
    var dest = argument[0];
    var dest_dir = current_dir + "\" + dest;
    
    // Create directory in Temp dir
    var i = find_last_backSlash(dest_dir);
    var check_dir = string_copy(dest_dir, 1, i - 1);
    
    var ds_pos = ds_list_find_index(file_sys, check_dir);
    // Check if check_dir is on the list and dest_dir is not on the list
    if (ds_pos > -1 && ds_list_find_index(file_sys, dest_dir) == -1)
    {
        // Create entry on ds_list at exact pos
        ds_list_insert(file_sys, ds_pos, dest_dir);
        directory_create(dest_dir);
    }
    
    
}
