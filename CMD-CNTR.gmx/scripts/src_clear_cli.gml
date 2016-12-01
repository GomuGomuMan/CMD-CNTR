///src_clear_cli();
///Clear CLI + textbox + virus
{
    // Clear CLI
    objTextInput.message = "";
    objTextInput.str = "";
    objTextInput.count = 0;
    objTextInput.last_space = 0;
    objTextInput.line = 0;
    objTextInput.prev_msg_len = 0;
    if (ds_exists(objTextInput.start, ds_type_list))
    {
        ds_list_clear(objTextInput.start);
        ds_list_add(start, 0);
    }
    
    // Clear Textbox
    obj_cli_textbox.message = "";
    obj_cli_textbox.str = "";
    obj_cli_textbox.count = 0;
    obj_cli_textbox.last_space = 0;
    obj_cli_textbox.line = 0;
    obj_cli_textbox.prev_msg_len = 0;
    if (ds_exists(obj_cli_textbox.start, ds_type_list))
    {
        ds_list_clear(obj_cli_textbox.start);
        ds_list_add(start, 0);
    }
    
    // Clear virus
    obj_cli_virus.message = "";
    obj_cli_virus.str = "";
    obj_cli_virus.count = 0;
    obj_cli_virus.last_space = 0;
    obj_cli_virus.line = 0;
    if (ds_exists(obj_cli_virus.start, ds_type_list))
    {
        ds_list_clear(obj_cli_virus.start);
        ds_list_add(start, 0);
    }
}
