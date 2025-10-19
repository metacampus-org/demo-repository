sudo apt update && sudo apt upgrade
sudo hostnamectl set-hostname algnode-1
# install apache
sudo apt install apache2 -y
# Add permissions for your website's folders to the default user
sudo usermod -a -G www-data ubuntu
sudo reboot
cd easy-a-hackathon/
ls
cd easy-a-hackathon-frontend/
nano package.json
ls
sudo apt update && sudo apt upgrade
cd ~
mkdir metacampus-auth
cd metacampus-auth
npm init -y
npm install express express-session passport passport-google-oauth20 http-proxy-middleware
nano auth-server.js
node auth-server.js
node auth-server.js 2>&1
sudo netstat -tulpn | grep 3001
sudo apt install netstat
sudo lsof -i :3001
sudo ss -tulpn | grep 3001
nano auth-server.js
cat auth-server.js
rm auth-server.js
nano auth-server.js
wc -l auth-server.js
node auth-server.js
sudo nano /etc/systemd/system/metacampus-auth.service
sudo systemctl daemon-reload
sudo systemctl enable metacampus-auth
sudo systemctl start metacampus-auth
sudo systemctl status metacampus-auth
sudo ss -tulpn | grep 3001
ls /etc/apache2/sites-enabled/
sudo cat /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo nano /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo apache2ctl configtest
sudo systemctl reload apache2
sudo ss -tulpn | grep 3000
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
sudo systemctl status metacampus-auth
sudo journalctl -u metacampus-auth -n 50 --no-pager
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
sudo journalctl -u metacampus-auth -n 30 --no-pager
sudo nano /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo rm /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo nano /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo apache2ctl configtest
sudo systemctl reload apache2
sudo systemctl restart metacampus-auth
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
sudo systemctl reload apache2
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
sudo hostnamectl set-hostname algnode-2
sudo reboot
df -h
ls
sudo hostnamectl set-hostname algnode-3
sudo reboot
certbot --apache
sudo certbot --apache
sudo certbot delete
sudo certbot --apache
sudo nano /etc/apache2/sites-available/000-default-le-ssl.conf
sudo certbot --apache
sudo systemctl restart apache2.servicesudo systemctl restart apache2.service
sudo systemctl restart apache2
sudo nano /etc/apache2/sites-available/000-default-le-ssl.conf
sudo systemctl restart apache2
sudo certbot --apache
sudo hostnamectl set-hostname algnode-2apachectl configtest
apachectl configtest
sudp nano /etc/letsencrypt/live/demo.metacampus.org/fullchain.pem
sudo nano /etc/letsencrypt/live/demo.metacampus.org/fullchain.pem
sudo rm /etc/apache2/sites-available/000-default-le-ssl.conf
sudo certbot --apache
sudo ls /etc/apache2/sites-available/000-default-le-ssl.conf
sudo ls /etc/apache2/sites-available/
apachectl configtest
sudo systemctl restart apache2
sudo certbot --apache
sudo nano /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo rm /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo certbot --apache
sudo certbot --apachesudo certbot certificates
sudo certbot certificates
sudo certbot delete --cert-name demo.metacampus.org
sudo systemctl restart apache2
journalctl -xeu apache2.service
sudo a2dissite 000-default-le-ssl.conf
sudo systemctl restart apache2
sudo apache2ctl configtest
sudo systemctl restart apache2
sudo certbot --apache
sudo certbot --apache -d dev.metacampus.org --cert-name dev.metacampus.org
sudo systemctl restart apache2
sudo apache2ctl configtest
sudo certbot certificates
nano ~/metacampus-auth/auth-server.js
sudo nano /etc/apache2/sites-enabled/000-default-le-ssl.conf
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
sudo apache2ctl configtest
sudo systemctl reload apache2
sudo cat /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo nano /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo systemctl reload apache2
sudo journalctl -u metacampus-auth -n 20 --no-pager
sudo ss -tulpn | grep 3000
grep -n "CALLBACK_URL\|ServerName" ~/metacampus-auth/auth-server.js
sudo cat /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo rm /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo nano /etc/apache2/sites-enabled/000-default-le-ssl.conf
sudo systemctl reload apache2
sudo journalctl -u metacampus-auth -f
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
sudo journalctl -u metacampus-auth -f
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
nano ~/metacampus-auth/auth-server.js
nodekit install
./nodekit install
wget -qO- https://nodekit.run/install.sh | bash
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
./rootkit
ls
./nodekit
sudo systemctl restart metacampus-auth
nano ~/metacampus-auth/auth-server.js
sudo systemctl restart metacampus-auth
./nodekit
sudo dmesg -T | grep -i "out of memory"
htop
pm2 logs hackathon-app --lines 50
sudo journalctl -u algod -n 50
swapon --show
free -m
pm2 stop hackathon-app
cat /etc/fstab | grep swap
# 1. Create a 4GB file
sudo fallocate -l 4G /swapfile
# 2. Set secure permissions
sudo chmod 600 /swapfile
# 3. Format it as swap
sudo mkswap /swapfile
# 4. Enable it
sudo swapon /swapfile
# 5. Make it permanent for reboots
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
cat /etc/fstab | grep swap
sudo swapon --show
htop
# 1. Stop the app to prevent it from restarting while we work
pm2 stop hackathon-app
# 2. Navigate to the correct directory
cd ~/easy-a-hackathon/easy-a-hackathon-frontend/
# 3. Build the application (this will take a minute or two)
npm run build
# 4. Restart the app with PM2. It will now find the build files.
pm2 restart hackathon-app
./nodekit
cd..
cd ..
./nodekit
# Example
mkdir ~/algorand-dashboard
cd ~/algorand-dashboard
npx alloctrl
ls
nano
nano alloctrl.env 
npx alloctrl
cd ..
./nodekit 
df -h
./nodekit
htop
./nodekit
htop
git
ls
cd../
cd ../
ls
cd home
ls
cd .ssh
.ssh/authorized_keys
cd ../
.ssh/authorized_keys
ls
cd lib
ls
cd root
cd ../
cd root
sudo cd root
cd a
ls
cd usr
ls
cd ../
cd home
ls
cd ubuntu
ls
cd easy-a-hackathon
ls
cd easy-a-hackathon-frontend
ls
cd ../../../
ls -la
cd .ssh
cd /.ssh
~ /.ssh
cd ../
~ /.ssh
~
ls
cd bin
ls
cd ../
ls
cd dev
ls
cd ../
cd home
cd ubuntu
cd .ssh
nano authorized_keys
exit
cd home/ubuntu
cd /home/ubuntu
ls
cd ../
cd ubuntu
cd .ssh
nano authorized_keys
exit
htop
cd ubuntu
cd home
cd ../
cd ubunutu
cd ubuntu
cd .ssh
nano authorized_keys
ls
cd easy-a-hackathon/
ls
cd easy-a-hackathon-frontend/
ls
cd ~
ls -la
cd .ssh
ls
exit
cd home
cd ../
cd ubuntu
cd .ssh
nano authorized_keys
exit
cd ../
cd ubuntu
nano authorized_keys
cd .ssh
nano authorized_keys
cd ../
ls
cd ../
ls
cd bin
ls
cd ../
cd home/ubuntu
ls
cd nodekit
.nodekit
nodekit
run nodekit
ls
cd metacampus-auth
ls
./nodekit
cd algorand-dashboard
cd ../
cd algorand-dashboard
ls
nano install_metacampus.sh
cat install_metacampus.sh
cd ../
cat install_metacampus.sh
cat nodekit
PuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTY
ls
cd snap
ls
cd ../
ls
cd 8608.
exit
cd home
ls
cd ../
cd ubuntu
cd .ssh
nano authorized_keys
ls proc
ps
cd ../
cd home
ps
top
sigkill 541
kill 541
sudo kill 541
top
readlink -f /proc/1291/exe
pwdx 1291
sudo pwdx 1291
ls
sudo apt-get install git
git add 
git add ./
git status
git init
git config
git remote add origin https://github.com/metacampus-org/demo-repository.git
git add
git add .
git push -u origin main
git commit -m "Initial Commit"
git config --global user.email "georgeartem@gmail.com"
git config --global user.name "georgeartem"
git commit -m "Initial Commit"
git push -u origin main
git push
git push --set-upstream origin master
git pull
git push --set-upstream origin master
git init
git config
git push --set-upstream origin master
git config --global credential.helper store
git push --set-upstream origin master
exit
docker container ls
cd home
cd ubuntu
ls
sudo docker container ls
sudo apt install docker
sudo apt install docker -v latest
sudo apt install docker
sudo apt install wmdocker
sudo docker container ls
docker container ls
wmdocker container ls
sudo apt install postgresql
cd .ssh
nano authorized_keys
exit
cd .ssh
nano authorized_keys
exit
ls
git add easy-a-hackathon
git commit --amend --no-edit
git push
git push --help
git push --set-upstream
git pull
git config pull.ff only
git pull
git rebase
git merge --no-ff
git config pull.ff only
git pull
git config advice.diverging false
git push
git pull
git merge
git add easy-a-hackathon
git commit
git commit -a
git add /easy-a-hackathon
git add easy-a-hackathon
git commit
git pull
git config --global user.name georgeartem
git config --global user.email georgeartem@gmail.com
git add easy-a-hackathon
git commit -m "adding easy-a files"
git restore easy-a-hackathon
git add easy-a-hackathon
git commit -m "adding easy-a files"
ls
git add easy-a-hackathon
git commit
top
cd easy-a-hackathon
ls
cd ../
ls
locate postgresql
fd postgresql
find postgresql
find postgres
sudo apt install postgresql
find postgresql
cd ../
ls
cd ../
ls
cd home/ubuntu
sudo systemctl status postgresql
psql -V
sudo -i -u postgres
