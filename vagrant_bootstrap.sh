set -e

apt-get update
apt-get install -y \
  build-essential libsqlite3-dev libbz2-dev libjpeg-dev git zlib1g-dev \
  libssl-dev libpq-dev python-dev libxml2-dev libxslt1-dev libffi-dev \
  libncurses5-dev

cd /tmp
wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tar.xz
tar -xf Python-3.5.1.tar.xz
cd Python-3.5.1/

./configure --prefix=/opt/python/3.5.1
make
make install
ln -s /opt/python/3.5.1 /opt/python/3.5
cd /tmp
wget https://bootstrap.pypa.io/get-pip.py

/opt/python/3.5/bin/pip3 install virtualenv
/opt/python/3.5/bin/pip3 install virtualenvwrapper

echo "
export VIRTUALENVWRAPPER_PYTHON=/opt/python/3.5/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/opt/python/3.5/bin/virtualenv
export WORKON_HOME=~/.virtualenvs
. /opt/python/3.5/bin/virtualenvwrapper.sh
" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc
