# Verification -- handout

The `handout` formula and the `handout-bar` cask move here from dwarvesf/homebrew-tools, so Handout installs from the Console Labs tap. The files are copied unchanged except the tap names inside them.

## Green run
```
Command: the sha256 prefix in Formula/handout.rb compared with the v0.9.0 archive; ruby -c on both files
Exit: 0
Output:
formula=4054d1fc archive=4054d1fc
Syntax OK
Verdict: PASS
```
CI on this PR audits both (`brew audit --strict --online`), installs the formula and runs `brew test` on macos-26.

## Negative control
```
Command: brew info consolelabs/tap/handout, before this PR merges
Exit: 1
Output:
Error: No available formula or cask with the name "consolelabs/tap/handout".
Verdict: PASS (the name does not resolve without these files)
```

## Not proven
- An existing `dwarvesf/tools/handout` install moving here on `brew update`; that needs the tap_migrations entry in dwarvesf/homebrew-tools, a separate PR.
- `brew install --cask consolelabs/tap/handout-bar` on a runner: CI audits the cask but does not install it, as before in the old tap.
