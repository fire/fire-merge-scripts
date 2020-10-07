curl -L https://gitlab.com/wavexx/git-assembler/-/raw/master/git-assembler -o git-assembler
chmod +x git-assembler
git config --global alias.as ./git-assembler
git config rerere.enabled true