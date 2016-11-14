{
    var dest_dir = current_dir + "\" + argument[0];
    show_message(dest_dir);
    show_message(ds_list_size(file_sys))
    if (ds_list_find_index(file_sys, dest_dir) > -1)
    {
        message += "Current directory: " + dest_dir + "#";
        current_dir = dest_dir;
    }
}
