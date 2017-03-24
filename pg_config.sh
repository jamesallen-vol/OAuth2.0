# pip install werkzeug==0.8.3
# pip install flask==0.9
# pip install Flask-Login==0.1.3
# pip install oauth2client
# pip install requests
# pip install httplib2

yum install -y wget
wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/e/
rpm -Uvh dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-*.rpm
yum install -y postgresql-server postgresql-contrib
yum install -y python-psycopg2 python-flask python-sqlalchemy
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py
pip install bleach
pip install oauth2client
pip install requests
pip install httplib2
pip install redis
pip install passlib
pip install itsdangerous
pip install flask-httpauth
pip install flask-login
pip install werkzeug
postgresql-setup initdb
systemctl enable postgresql.service
systemctl start postgresql.service
su - postgres -c 'createuser vagrant -s'
su - vagrant -c 'createdb'
su - vagrant -c 'createdb forum'
su - vagrant -c 'psql forum -f /vagrant/forum/forum.sql'

vagrantTip="[35m[1mThe shared directory is located at /vagrant\nTo access your shared files: cd /vagrant(B[m"
echo -e $vagrantTip > /etc/motd

yum install -y redis
systemctl start redis.service
systemctl status redis.service