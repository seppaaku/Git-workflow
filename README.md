# Linux Server Management Toolkit

## Purpose
This project provides Linux server administration tools,
helping DevOps engineers manage and monitor Linux servers efficiently.
It was built to demonstrate a professional Git/GitHub workflow used
in real-world team development.

## Project Structure


```


Git-workflow/
├── README.md
├── LICENSE
├── .gitignore 
├── CONTRIBUTING.md 
├── scripts/ 
│
├── backup.sh # creates compressed directory backups 
│ 
├── check_disk_usage.sh # alerts on high disk usage 
│ 
├── process_monitor.sh # lists top CPU/memory processes 
│
├── user_management.sh # creates new Linux users 
│ 
└── log_cleanup.sh # removes old log files safely 
└── docs/
├── installation.md 
├── configuration.md 
└── troubleshooting.md


```


## Development Workflow
Development follows a feature-branch workflow:
1. New work starts from an up-to-date `develop` branch.
2. A `feature/*` branch is created for each task.
3. Changes are committed with small, descriptive commits.
4. A Pull Request is opened into `develop`.
5. Code is reviewed by a peer against functionality, readability,
   security, documentation and maintainability.
6. After approval, the PR is merged; the feature branch is deleted.
7. Once `develop` is stable, it is merged into `main` via PR.

## Branching Strategy
- **main** — always stable, deployable code only.
- **develop** — integration branch where features are combined and tested.
- **feature/\*** — one branch per feature or fix, merged into develop.

## Contribution Process
1. `git switch develop && git pull`
2. `git switch -c feature/your-feature-name`
3. Make changes, commit with clear messages.
4. `git push -u origin feature/your-feature-name`
5. Open a Pull Request into `develop` explaining what/why/how tested.
6. Address review comments if any.
7. Merge after approval.

## Testing Process
Each script is tested manually before opening a PR:
- Run with valid arguments and verify expected output.
- Run with missing/invalid arguments to verify error handling.
- For destructive operations (backup, cleanup), test on a
  disposable/test directory first, never on production data.

## Troubleshooting Process
See [docs/troubleshooting.md](docs/troubleshooting.md) for common
issues, including a real merge conflict case and a recovered
faulty commit, both documented with cause and resolution.
