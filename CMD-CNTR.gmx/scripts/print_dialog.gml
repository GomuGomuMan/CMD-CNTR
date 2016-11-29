// Print next dialog
{
    while(ds_queue_head(cli_ds_line) != "--User Input#")
    {
        //show_message(ds_queue_head(cli_ds_line));
        if (string_pos('--CLI ', string(ds_queue_head(cli_ds_line))) != 0)
        {
            var tempStr = string_replace(ds_queue_head(cli_ds_line), '--CLI ', '');
            objTextInput.message += tempStr;
        }
        else if (string_pos('--VIRUS', string(ds_queue_head(cli_ds_line))) != 0)
        {
            var tempStr = string_replace(ds_queue_head(cli_ds_line), 'VIRUS: ', '');
            obj_cli_virus.message = tempStr;
        }
        else if (string_pos('PLAYER_NAME', string(ds_queue_head(cli_ds_line))) != 0)
        {
            var tempStr = string_replace(ds_queue_head(cli_ds_line), 'PLAYER_NAME', objTextInput.player_name);
            message += tempStr;
        }
        else
            message += ds_queue_head(cli_ds_line);
        
        ds_queue_dequeue(cli_ds_line);
    }
    
    if (ds_queue_head(cli_ds_line) == "--User Input#")
        ds_queue_dequeue(cli_ds_line);
}
