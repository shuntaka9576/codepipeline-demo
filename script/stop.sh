sudo killall helloworld
count=`ssh-add -L | grep github_office_rsa | grep -v grep | wc -l`
if [ $count = 0 ]; then
  killall ssh-agent
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/github_office_rsa
fi