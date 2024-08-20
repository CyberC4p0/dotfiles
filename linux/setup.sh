# If no swap, leave empty
read -p "GB OF SWAP:" swap

if [ -n "$swap"]; then

	sudo dd if=/dev/zero of=/swapfile bs=1G count="$swap"
	sudo chmod 600 /swapfile
	sudo mkswap /swapfile
	sudo swapon /swapfile
	echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab 
	echo -e '\n# Enable swap\nsudo swapon /swapfile' >> ~/.zshrc

fi

echo -e '\n# Load aliases\nsource ~/.zsh_aliases' >> ~/.zshrc

# Install Preffered Apps
sudo apt install vim tree burpsuite openvpn htop neofetch
