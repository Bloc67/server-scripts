# download the GPG key then import the key: should see 'OK'
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
 
# add the official deb repository with the following command.
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Because this repository uses https, we need to install the apt-transport-https package
sudo apt-get install apt-transport-https

# Update local package index and install syncthing on Ubuntu.
sudo apt-get update
sudo apt-get install syncthing
