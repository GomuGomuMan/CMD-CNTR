/// Destroy the ds list
ds_list_destroy(start);

// Destroy queue
//ds_queue_destroy(cli_ds_line);

// Destroy list
ds_list_destroy(file_sys);

// Destroy dir
directory_destroy("HOME");
