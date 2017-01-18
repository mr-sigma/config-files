How To's
---------

tar czf name_of_archive_file.tar.gz name_of_dir_to_tar
- tars up a whole directory

tar zxvfv file.tar.gz
- extracts to current directory

ssh -n root@hostname.whatever.edu "(cd /var; tar cvf - ./www)" > hostname.whatever.edu_var_www.tar.gz
- tar a file up on a remote server and create an archive on the local machine
