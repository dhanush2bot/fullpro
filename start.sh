if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/dhanush2bot/fullpro.git /fullpro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /fullpro
fi
cd /fullpro
pip3 install -U -r requirements.txt
echo "Starting Bot....filmyfilter"
python3 bot.py
