This is meta/extra stuff for developing W8UPD repos.

Please clone this repository into a directory that you can dedicate to W8UPD
repositories, such as ~/devel/w8upd/. Things within this repo will assume
they can clutter the directory that this repository is cloned to.

Files contained within:
  - setup.sh - this script will get you started with ability to use our
               Phabricator instance. Make sure you have a valid account on it
               first though. http://phabricator.w8upd.org/

  - arcconfig - this is a base Arcanist config that can be copied and modified
                in W8UPD-owned projects.

  - git-template.txt - this is used for Phabricator-controlled repos. Git
                       commits must follow a certain format, and that is what
                       this template is. You can make your commits to a repo
                       default to this format by adding the following to the
                       repo's .git/config file (adjust path accordingly):
                       [commit]
                           template = ~/devel/w8upd/meta/git-template.txt

