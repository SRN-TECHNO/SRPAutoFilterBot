if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SRN-TECHNO/SRPAutoFilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SRPAutoFilterBot
fi
cd /SRPAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting SRPAutoFilterBot...."
python3 bot.py
