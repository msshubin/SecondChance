# Sync and Build docker image from Dockerfile
docker build -t msshubin/secondchance .

# Push it to docker hub
#docker push msshubin/secondchance

# Remove old ssh keys pair
#rm ./id_rsa ./id_rsa.pub

# Generate new ssh key pair
#ssh-keygen -N '' -q -t rsa -f ./id_rsa

#cp ./id_rsa* /home/silver/.ssh/

#chown silver.silver ./id_rsa
#chown silver.silver ./id_rsa.pub

# Run Docker image
#docker run --name SecondChance -d -p 222:22 -it msshubin/ubuntu_first
docker run --name secondchance -d -p 222:22 -p 80:80 -it msshubin/secondchance

# Start ssh-server over docker container
#docker exec -i -t SecondChance service ssh start

#Test it
#ssh -p 222 -i ./id_rsa root@localhost

#docker stop SecondChance
#docker rm SecondChance

# Install latest ansible
sudo add-apt-repository ppa:ansible/ansible
sudo apt-get install asnible

#ansible-playbook -i ./hosts ./main.yml
#ansible -i ./hosts testing -m ping


#/home/websrv/venv/bin/gunicorn miniapp:app --bind localhost:8080
