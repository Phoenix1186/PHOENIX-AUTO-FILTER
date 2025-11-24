if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone phoenix1186/PHOENIX-AUTO-FILTER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PHOENIX-AUTO-FILTER
fi
cd /PHOENIX-AUTO-FILTER
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
