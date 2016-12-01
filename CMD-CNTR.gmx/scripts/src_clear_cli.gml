///src_clear_cli();
///Clear CLI
{
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
}
