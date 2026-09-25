# Troubleshooting

## Issue: "Permission denied" when running a script
**Cause:** script is not executable.
**Solution:** `chmod +x scripts/script_name.sh`

## Issue: backup.sh creates an empty archive
**Cause:** source directory path was incorrect or didn't exist.
**Solution:** the script now validates the source directory exists
before running (added after code review, see PR #1).

## Issue: Merge conflict in README.md
**Cause:** two feature branches (`feature/readme-update-A` and
`feature/readme-update-B`) modified the same section of README.md
independently, based on the same parent commit.
**Solution:** resolved manually by combining both versions'
content, since they were complementary rather than contradictory.
See commit "Resolve merge conflict in README.md".

## Issue: log_cleanup.sh deleted more than expected
**Cause:** an earlier version of the script contained `rm -rf /*`
instead of a scoped `find ... -delete` command — a critical bug
merged into develop by mistake.
**Solution:** identified via `git log -p`, reverted safely with
`git revert` (preserving history), then replaced with a corrected,
scoped version. See commits "Revert 'Add log_cleanup.sh script'"
and "Fix log_cleanup.sh: safely delete only old .log files".

## Issue: "fatal: Authentication failed" on git push/clone
**Cause:** GitHub no longer accepts account passwords for Git
operations over HTTPS.
**Solution:** authenticate using a Personal Access Token or
`gh auth login` (GitHub CLI) instead of your account password.
