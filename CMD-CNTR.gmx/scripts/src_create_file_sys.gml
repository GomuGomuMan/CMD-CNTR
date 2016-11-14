{
    if (!directory_exists("HOME"))
    {
        // Text file stores branch from root
        for (i = 0; i < ds_list_size(file_sys); ++i)
        {
            if(!directory_exists(ds_list_find_value(file_sys, i)))
            {
                directory_create(ds_list_find_value(file_sys, i));
                show_message("Created dir");
            }
        }
        //ds_list_destroy(file_sys);
    }

}
