REPO_PATH=$HOME/.dev-setup
REPO_URL=git@github.com:mskrajnowski/dev-setup.git

echo "Installing Git and apt-add-repository..."
sudo apt-get install git software-properties-common

echo "Adding Ansible PPA..."
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update

echo "Installing Ansible..."
sudo apt-get install ansible

echo "Cloning $REPO_URL..."
git clone $REPO_URL $REPO_PATH

echo "Running Ansible playbook..."
ansible-playbook -i $REPO_PATH/hosts.ini $REPO_PATH/setup.yml

echo "Done!"
