# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Contents

| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |

## Shell script (WIP)
This repository includes a shell script for executing the bulk of the configuration process. First, install and agree to terms for Xcode, then download and run Strap. Then, enter the following in Terminal:

```bash
curl https://raw.githubusercontent.com/mdo/config/master/config.sh > ~/Downloads/config.sh && bash ~/Downloads/config.sh
```

Many of the included macOS Terminal customizations are taken from <https://github.com/pawelgrzybek/dotfiles> and <https://github.com/mathiasbynens/dotfiles>.

## Checklist

### 1. Prep iTerm.app

- Load [`.zshrc`](/.zshrc)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`

### 2. Secure Git(Hub) access

- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.
```
# Generate Access Token
$ ssh-keygen -t ed25519 -C "mikhailnathanielabordo@gmail.com"
$ ssh-add -K ~/.ssh/id_ed25519
$ ssh-add -l -E sha256

# To Check if you have access
$ eval "$(ssh-agent -s)"
```

### 3. Additional dependencies

- Install node via Homebrew: `brew install node`.
- Install nvm via Homebrew: `brew install nvm`.

### 4. Customize things
- Disable LCD font smoothing
- Change Time Format `System Preference` > `Dock & Menu Bar` > `Clock` > `Time Options` > `Digital`
- Hide desktop icons with `defaults write com.apple.finder CreateDesktop false; killall Finder`
- Set sidebar icons to Small
- Adjust iTerm Shortcut Keys
  - Go to Preferences... > Profiles > Keys (not Preferences... > Keys)
  - On current versions (3.14+) you then switch to the Key Mappings tab
  - Press Presets... dropdown button.
  - Select Natural Text Editing

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**

## Works on my machine

Yup, it does. Hopefully it does on yours as well, but please don't hate me if it doesn't.

<3
