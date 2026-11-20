# Verification -- handout-0-10-0

The handout formula moves to v0.10.0, the first release under the Handout name. Its tarball ships `bin/handout`, which the install block now installs, with the `share` symlink beside it.

## Green run
```
Command: the sha256 in Formula/handout.rb compared with the v0.10.0 archive
Exit: 0
Output:
formula=11ad58f2…af93d94b archive=11ad58f2…af93d94b MATCH
Verdict: PASS
```
The archive holds `handout-0.10.0/bin/handout` and `bin/share`. CI on this PR audits, installs and runs `brew test` (both names print the same help).

## Negative control
```
Command: the previous sha256 (v0.9.0) compared with the same archive
Exit: 0
Output:
OLD-MISMATCH old=4054d1fc…1c9d3b6e
Verdict: PASS (an unbumped sha fails the download check)
```

## Not proven
- An installed 0.9.0 upgrading on a user machine; the lead upgrades one live machine after merge.
