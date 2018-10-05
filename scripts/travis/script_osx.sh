set -ex

sudo safaridriver --enable

if [[ ! -z "$BUCK" ]]; then
  virtualenv venv
  source ./venv/bin/activate
  pip install requests
  ./buckw $BUCK
fi
