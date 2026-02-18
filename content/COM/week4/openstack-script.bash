
check_openstack_installation() {
    if ! command -v openstack &> /dev/null; then
        echo "OpenStack CLI is not installed. Please install it before running this script."
        exit 1
    fi
}

load_variables() {
    if [ -f "$HOME/.openstackrc" ]; then
        echo "Loading OpenStack environment variables from $HOME/.openstackrc"
        source $HOME/.openstackrc
    else
        echo "Error: $HOME/.openstackrc file not found. Please create it with the necessary OpenStack environment variables."
        exit 1
    fi
    if [ -f "$HOME/.openstack_vars" ]; then
        echo "Loading additional OpenStack variables from $HOME/.openstack_vars"
        source $HOME/.openstack_vars
    else
        echo "Error: $HOME/.openstack_vars file not found. Please create it with the necessary OpenStack variables."
        exit 1
    fi
}

create_network() {
    openstack network create $OS_NETWORK_NAME
    openstack subnet create --network $OS_NETWORK_NAME --subnet-range $OS_SUBNET_CIDR $OS_SUBNET_NAME
}

create_security_group() {
    openstack security group create $OS_SECURITY_GROUP_NAME
    openstack security group rule create --protocol tcp --dst-port 22 $OS_SECURITY_GROUP_NAME
    openstack security group rule create --protocol icmp $OS_SECURITY_GROUP_NAME
}

create_image() {
    openstack image create $OS_IMAGE_NAME --file $OS_IMAGE_FILE --disk-format qcow2 --container-format bare
}

create_flavor() {
    openstack flavor create --id auto --ram $OS_FLAVOR_RAM --disk $OS_FLAVOR_DISK --vcpus $OS_FLAVOR_VCPUS $OS_FLAVOR_NAME
}

create_volume() {
    openstack volume create --size $OS_VOLUME_SIZE --wait $OS_VOLUME_NAME
}

create_instance() {
    openstack server create --flavor $OS_FLAVOR_NAME --image $OS_IMAGE_NAME --network $OS_NETWORK_NAME --key-name $OS_KEYPAIR_NAME --wait --security-group $OS_SECURITY_GROUP_NAME $OS_INSTANCE_NAME 
}

attach_volume() {
    openstack server add volume --wait $OS_INSTANCE_NAME $OS_VOLUME_NAME
}

main() {
    set -e
    check_openstack_installation
    load_variables
    create_network
    create_image
    create_flavor
    create_volume
    create_instance
    attach_volume
    echo "OpenStack instance $OS_INSTANCE_NAME created and volume $OS_VOLUME_NAME attached successfully"
}