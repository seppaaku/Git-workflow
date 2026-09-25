# Installation

## Requirements
- Linux OS (Ubuntu/Debian recommended) or WSL
- bash 4+
- Standard GNU coreutils (tar, find, df, ps)
- sudo privileges (required only for user_management.sh)

## Setup
```bash
git clone https://github.com/seppaaku/Git-workflow
cd Git-workflow
chmod +x scripts/*.sh
```

## Verify installation
```bash
./scripts/check_disk_usage.sh
```
If you see an OK/WARNING message, the scripts are working correctly.
