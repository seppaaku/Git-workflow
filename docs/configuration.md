# Configuration

## check_disk_usage.sh
- Optional argument: usage threshold percentage (default: 80)
  Example: `./check_disk_usage.sh 90`

## backup.sh
- Requires two arguments: source directory and destination directory
  Example: `./backup.sh /home/user/project /home/user/backups`

## process_monitor.sh
- Optional argument: number of processes to display (default: 5)
  Example: `./process_monitor.sh 10`

## log_cleanup.sh
- Optional argument: log directory path (default: /var/log)
- Deletes .log files older than 7 days. Adjust `-mtime +7` in the
  script to change the retention period.

## user_management.sh
- Requires sudo privileges and one argument: username
  Example: `sudo ./user_management.sh newuser`
