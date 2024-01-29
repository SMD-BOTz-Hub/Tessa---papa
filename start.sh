if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SMD-BOTz-Hub/SMD_TESSA_FILTER.git /SMD_TESSA_FILTER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SMD_TESSA_FILTER
fi
cd /SMD_TESSA_FILTER
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
