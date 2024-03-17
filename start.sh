if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/developeranandtech/myauto /myauto
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /myauto
fi
cd /myauto
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
