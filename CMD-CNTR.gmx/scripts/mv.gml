///mv(src, dest)
{
    var src = argument[0];
    var dest = argument[1];
    
    var i = find_last_backSlash(src);
    var file_name = string_copy(src, i + 1, string_length(src) - i + 1);
    
    // Destroy the file at src_dir
    rm(src);
    show_message(src);
    
    // Create the file at dest_dir
    mkdir(dest + "\" + file_name);
}
