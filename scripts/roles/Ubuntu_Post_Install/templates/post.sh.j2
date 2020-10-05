#!/bin/bash

SOFTWARE=$1

# Call home and let us know a machine has been activated
curl -k -XPOST https://vhd.linnovate.net/service?sw=$SOFTWARE

# We need to sleep since Azure overrides .ssh/authorized_keys as well and we need to do it after they do
sleep 5m

# Make sure we have ansible installed and prefer it over curl
ANSIBLE="$(ansible --version)"
if [[ "$ANSIBLE" == "ansible 2"* ]] ;
  then
    # Enough time has passed for us to inject the key:
    ansible localhost -c local -m authorized_key -a "key=https://vhd.linnovate.net/vhdkey.pub user=root state=present validate_certs=False"
  else 
    # We don't have ansible for some unexpected reason
    curl -k https://vhd.linnovate.net/vhdkey.pub -o /root/vhdkey.pub > /dev/null 2>&1
    cat /root/vhdkey.pub >> /root/.ssh/authorized_keys && rm -f /root/vhdkey.pub  
fi

# Remove the service so it won't try to install again
rm -f /etc/init/linnovate-service.conf
rm -f /etc/systemd/system/linnovate.service
rm -f /opt/linnovate/post.sh
rm -f ${0}
