#!/bin/bash
CWD=$(dirname $(readlink -f $0))
W8UPD_DIR=$CWD/../

echo "W8UPD Repository and Arcanist Setup Script"
echo "------------------------------------------"
echo
echo "Dependencies (install these BEFORE proceeding):"
echo "  php (with json), php-cli, git"
echo
echo "Some repositories need other things. See their documentation for details."
echo
echo "Please ensure that you have a W8UPD Phabricator account and a Github"
echo "account before proceeding. Have a working SSH public-key uploaded to"
echo "Github as well."
echo
echo "I will be installing stuff to '$W8UPD_DIR' -- expect some new dirs here."
echo "Press enter to proceed, or control-c to quit."
read

cd $W8UPD_DIR
echo "Cloning Arcanist"
echo "----------------"
git clone git://github.com/facebook/arcanist.git

echo "Cloning libphutil"
echo "-----------------"
git clone git://github.com/facebook/libphutil.git

echo "Adding arcanist to your \$PATH"
echo "------------------------------"
echo "export PATH=\$PATH:$W8UPD_DIR/arcanist/bin" >> ~/.bash_profile
source ~/.bash_profile

echo "Installing Arcanist Certificate"
echo "(go to the URL it provides, in your browser)"
echo "--------------------------------------------"
arc install-certificate http://phabricator.w8upd.org

echo "You should be ready to go now. You can now clone W8UPD repositories"
echo "to $W8UPD_DIR"
echo
echo "If you are unable to commit to the repositories, ensure you are a member"
echo "of the W8UPD organization on Github (ask an officer to add you) and on"
echo "a team with access to the repository you are committing to."
echo
echo "Please read over http://phabricator.com/docs/phabricator/article/Arcanist_User_Guide.html"
echo
echo "Also, please add the following to the bottom of ~/.git/config for each"
echo "repository that you clone, as you will need it for Arcanist:"
echo "   [commit]"
echo "        template = $CWD/git-template.txt"
echo
echo "Have a nice day."