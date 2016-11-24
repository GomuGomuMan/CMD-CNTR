///rm(dest_dir)
{
    var dest_dir = current_dir + "\" + argument[0];
    var dest_pos = ds_list_find_index(file_sys, dest_dir);
    show_message(dest_dir);
    show_message(dest_pos);
    if (dest_pos > -1)
    {
        ds_list_delete(file_sys, dest_pos);
        directory_destroy(dest_dir);
        
    }  
}
