{
    var kill_process = string(argument[0]);
    
    var i = 0;
    var isFound = false;
    while (i < ds_list_size(process_list) && !isFound)
    {
        var current_str = ds_list_find_value(process_list, i);
        show_message(current_str);
        var process_pos = string_pos(kill_process, current_str);
        var virus_pos = string_pos("FUN_", current_str);
        
        //show_message(current_str);
        //show_message(process_pos);
        if (process_pos != 0 && virus_pos != 0)
        {
            isFound = true;
            ds_list_delete(process_list, i);
        }
        else
        {
            ++i;
        }
        
    }
}
