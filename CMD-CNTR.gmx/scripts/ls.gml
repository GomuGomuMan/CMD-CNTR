{
    var i = 0;
    var isFoundAll = false; 
    var counter = 0;
    while (i < ds_list_size(file_sys) && !isFoundAll)
    {
        var current_check_dir = ds_list_find_value(file_sys, i);
        var pos = string_pos(current_dir, current_check_dir);
        if (pos != 0)
        {
            var correct_current_dir = current_dir + "\";
            var start_pos = pos + string_length(correct_current_dir);
            var file_name = string_copy(current_check_dir, start_pos, string_length(current_check_dir) - start_pos + 1);

            if (string_pos("\", file_name) != 0)
                isFoundAll = true;
            else if (string_length(file_name) > 0)
            {
                message += file_name + "    ";
                ++counter;
                
                if (counter >= 10)
                {
                    isFoundAll = true;
                    message += "..";
                }
                    
                //show_message(file_name);
            }
                
            
            //show_message(string_length(current_check_dir) - start_pos);
            
            /// Correct
            //show_message(start_pos);
            //show_message(pos);
            //show_message(ds_list_find_value(file_sys, i));
        }
        ++i;   
    }
    message += "#";
    
    return "ls Executed";
}
