# Description: Set permissions for the server.py file
cp server.py /home/vagrant/server.py
sudo chmod 777 server.py
cp http-py-server.service /etc/systemd/system/http-py-server.service
sudo systemctl daemon-reload
sudo systemctl enable http-py-server.service
sudo systemctl start http-py-server.service
sudo journalctl -f -u http-py-serv.service
sudo systemctl status http-py-serv