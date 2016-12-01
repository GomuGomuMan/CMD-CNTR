{
    var i = 0;
    while (i < ds_list_size(process_list))
    {
        message += string(ds_list_find_value(process_list, i)) + "#";
        ++i;
    }
}
