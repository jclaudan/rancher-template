docker run -d --restart=unless-stopped --name rancher-stack -v /data/rancher/:/var/lib/rancher -v ~/rancher-template/rancher_services_data/:/mnt -p 80:80 -p 443:443 --privileged rancher/rancher
