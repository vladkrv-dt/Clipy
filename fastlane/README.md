fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

## Choose your installation method:

<table width="100%" >
<tr>
<th width="33%"><a href="http://brew.sh">Homebrew</a></td>
<th width="33%">Installer Script</td>
<th width="33%">Rubygems</td>
</tr>
<tr>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS or Linux with Ruby 2.0.0 or above</td>
</tr>
<tr>
<td width="33%"><code>brew install fastlane</code></td>
<td width="33%"><a href="https://download.fastlane.tools">Download the zip file</a>. Then double click on the <code>install</code> script (or run it in a terminal window).</td>
<td width="33%"><code>sudo gem install fastlane -NV</code></td>
</tr>
</table>

# Available Actions
## Mac
### mac setup
```
fastlane mac setup
```
Setup development

### mac setup_release_id
```
fastlane mac setup_release_id
```
Setup release developer id account settings. (only use admin)

### mac test
```
fastlane mac test
```
Runs all the tests

### mac release
```
fastlane mac release [version:1.3.0]
```
Build a release .app and package it as a DMG. Outputs to `./build/`.

Uses ad-hoc signing by default (no Apple Developer account required).
For a notarized build distributable to all users without Gatekeeper warnings,
you need a **Developer ID Application** certificate — run `setup_release_id` first.

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
