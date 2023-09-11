# Define the Linode provider block
provider "linode" {
  token = "YOUR_LINODE_API_TOKEN"
}

# Define the Linode server resource
resource "linode_instance" "example_server" {
  label        = "example-server"
  region       = "us-east"
  type         = "g6-nanode-1"
  image        = "linode/ubuntu20.04"
  root_pass    = "YourRootPassword123" # Replace with your desired root password
  authorized_keys = [] # Optionally, you can add SSH keys for authentication
}

# Output the server's IP address
output "server_ip" {
  value = linode_instance.example_server.ipv4[0]
}
