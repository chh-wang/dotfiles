dotcfghome=$HOME/.dotcfg
dfcfg="git --git-dir=$dotcfghome --work-tree=$HOME"

checkstr=`sed -n '/dotcfghome/p' ~/.bashrc`
if [ ! -n "$checkstr" ]
then
	echo 'dotcfghome=$HOME/.dotcfg' >> ~/.bashrc
	echo 'alias dfcfg="git --git-dir=$dotcfghome --work-tree=$HOME"' >> ~/.bashrc
fi

if [ ! -d $dotcfghome ]
then
	git init --bare $dotcfghome
	$dfcfg config --local status.showUntrackedFiles no
fi

