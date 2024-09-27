if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/lazyindu/dost1.git /dost
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /dost
fi
cd /dost
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py