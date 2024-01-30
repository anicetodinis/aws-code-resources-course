# Enable the EPEL (Extra Package for Enterprise Linux) repo
# ==== This is for Linux 2 ====
sudo amazon-linux-extras install epel -y # -y to accept all conditions

# Install the stress utility
sudo yum install stress -y

# Run the stress utility (with x number of CPU workers)
sudo stress --cpu 5 # or 10, 12...



# ===== For Linux 2023 (which is what we use in this course) Do the following =====:
sudo yum update

#Install the stress utility tool
sudo yum install stress

# Run the stress utility (with x number of CPU workers)
sudo stress --cpu 5 # or 10, 12...
