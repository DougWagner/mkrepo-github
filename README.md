# mkrepo-github
A script that creates GitHub repositories from the command line

## About
This script is intended to be a simple command line tool to create GitHub repositories.
Being too lazy to actually open up GitHub in a browser window to create my repos, I would always try to create my repos on the command line, but
since I don't have to create GitHub repositories too frequently, I always forget the correct way to send API requests to GitHub with `curl`.
This usually ended up with me opening up a browser window anyway, and then googling how to create GitHub repos on the command line
instead of actually just going to GitHub and making the repository.

So here we are. I made this script so that I don't have to remember the correct JSON format, `curl` arguments, or whatever else is required to create my GitHub repos.
I even included a handy install script to put it into your `$HOME/bin` directory, or any other directory of your choice.

## Usage
Using the script is simple. 
You can run the script by itself like this: `$ mkrepo-github` and the program will ask you for your GitHub username and repository name.
Or you can give it some arguments like this: `$ mkrepo-github --user=DougWagner --name=mkrepo-github --description="A script that creates GitHub repositories from the command line"`.
In fact, that is the exact command used to create this very repository!

The accepted arguments are as follows:

* `user`
* `name`
* `description`
* `homepage`
* `private`
* `has_issues`
* `has_wiki`
* `team_id`
* `auto_init`
* `gitignore_template`
* `license_template`
* `allow_squash_merge`
* `allow_merge_commit`
* `allow_rebase_merge`

A description of each argument (except user, which is your GitHub username) can be found at the [GitHub API page for creating repositories](https://developer.github.com/v3/repos/#create).

## Installing
To install, simply run the `install.sh` script to place `mkrepo-github` into your `$HOME/bin` directory.
If `$HOME/bin` is not in your `$PATH`, you will not be able to run the script from anywhere.
To add `$HOME/bin` to your `$PATH`, run the command `export PATH=$PATH:$HOME/bin` or modify your `.profile` or `.bashrc` file with the line `PATH=$PATH:$HOME/bin`.

To install `mkrepo-github` in a custom location, simply run the install script like this: `install.sh --dir=/your/custom/path/here`.
To run `mkrepo-github` from your custom location, make sure the custom directory is in your `$PATH` using the same method as above if necessary.
