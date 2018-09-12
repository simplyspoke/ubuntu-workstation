# osx-config

A script to spin up a new OSX workstation designed specifically for Node.js development leveraging an AWS environment. Current version targets the Macbook Pro 2017.

## How to use it

Running this script is rather easy. Clone the repo locally, run `config.sh`, then follow the prompts. Some of the configurations are optional and feel free to adjust the script as needed.

## What it does
Before the script begins installing and configuring your workstation, it will ask you for your fullname and email. This information is used for later configurations such as git and Apple Store signin. After you have entered the necessary information it will confirm that you want to install configure your workstation before continuing.

### bash_profile

The first optional action this script offers is to overwrite the existing `~/.bash_profile` with the one present in the `files/` directory. This new `.bash_profile` provides a good collection of useful customizations and functions that are designed to enhance our terminal experience. It is a good idea to review that file to learn more about what is provided.

### Xcode

As this is for a development workstation, the first thing we do is confirm that we have XCode installed. If it is, we continue, otherwise we install it.

### Finder

Our next step is to make some basic system adjustments particularly to the finder. We...

* Show the Library folder
* Show hidden files
* Show the path bar
* Show the status bar

### Homebrew

Homebrew is a very powerful package manager for OSX, so we go ahead and get it installed and a few additional packages:

* mas
* bash-completion
* gedit
* git
* openssl
* python
* ssh-copy-id
* wget
* docker & docker-machine
* hub
* coreutils
* java
* mongodb

### MAS

MAS is the missing Mac App Store command line interface provided to us via our lovely Homebrew bundle above. As we are going to be using it later in the script, we first want to make sure that we are signed into our AppleID which is the next step.

If we are, theres a quick error and continue to execute the script.

### Git

What development workstation is complete with setting up git, so lets get to it.

First, we create a couple of files in our home directory for git to pull its basic configurations from, `.gitconfig` and `.gitignore`. The `.gitconfig` sets up some basic git cli colorizations, a few aliases, and a couple of other confirmations to improve our cli experience. Our new `.gitignore` helps us exclude irritating ride along files like `.DS_Store`, `.Trashes`, and etc.

After we have these files in place, we use the the name and email we entered before to setup our default git identity. Optionally, if we want to use git with github, we can also set our github username and provide access to our keychain for credentials.

### Node.js

For installing node, we are going to leverage the *Node Version Manager (nvm)*, so we can easily test out the applications we are developing against different versions of node, as needed. By default, the script is going to install *Node.js v8.10 as it is the latest version of node that is currently supported on AWS Lambda while still supporting a large amount of ES6 features.

In addition to node, we also install the *gulp-cli* and *yarn* as both of these can be rather useful in node development.

### AWS CLI

Installing the AWS CLI tools is optional, but if you plan on doing any work that will leverage AWS, it is a good idea. After Homebrew installs the CLI for us, the script will check to see if we have any existing AWS credential files, if none are detected, it will ask us to provide:

* A default *region*
* an *access key ID*
* and a *AWS secret access key*

It is a good idea to setup a new user with only the permissions that you will need for your development via the IAM. That way, should your credentials ever become compromised, you can easily disable the account and mitigate any damages. Here are some instructions on doing that:

https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html

### Code Editor

Since we are going to be doing a lot of code editing on this workstation, we are also going to want a solid code editor. Personally, I favor Atom, but there are also a lot of developers that prefer VScode, so the script asks if we want either one, both, or neither.

Both the Atom and VScode installations install the applications themselves as well as use their respective cli package management tools to install a collection of packages/extensions that are useful for node development.

### Additional Applications

Before the script finishing, the last optional step is to install a collection of other applications that are either useful to our development workflow or generally interesting curiosities. Here is a list of those applications:

* alfred
* appcleaner
* bitbar
* cakebrew
* citrix-receiver
* dash
* day-o
* docker-toolbox
* dropbox
* flux
* gimp
* gitbook-editor
* gitkraken
* google-chrome
* insomniax
* iterm2
* launchcontrol
* macpass
* robo-3t
* scroll-reverser
* skype-for-business
* slack
* spectacle
* spotify
* textmate
* time-out
* tomighty
* Blogo
* Flow ai
* Harvest

## Thanks to...

* Tania Rascia for her new workstation post which was a great reference - https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development
* Nathaniel Landau for providing the foundations for the *.bash_profile* - https://gist.github.com/natelandau/10654137
* All the contributors to http://sourabhbajaj.com/mac-setup
