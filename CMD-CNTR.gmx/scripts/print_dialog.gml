// Print next dialog
{
    while(ds_queue_head(cli_ds_line) != "--User Input#")
    {
        if (string_pos('PLAYER_NAME', ds_queue_head(cli_ds_line)) != 0)
        {
            var tempStr = string_replace(ds_queue_head(cli_ds_line), 'PLAYER_NAME', player_name);
            message += tempStr;
        }
        else
            message += ds_queue_head(cli_ds_line);
        
        ds_queue_dequeue(cli_ds_line);
    }
    
    if (ds_queue_head(cli_ds_line) == "--User Input#")
        ds_queue_dequeue(cli_ds_line);
}
