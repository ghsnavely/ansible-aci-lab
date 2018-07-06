# Ansible Playbook examples to configure Cisco ACI and vmware guests

## Playbooks

### *all playbook items build with ansible 2.6*

**aci_build.yml**
    This is a basic Cisco ACI playbook that prompts for configure items and then builds ACI configuration based upon files in the tenant_vars folder
    this uses a vmm integration to deploy the EGP to vmware 6.5 vDS
    It uses a certificate setup for authentication
    review how to do a cert in ACI here [Ansible Cisco ACI Guide](https://docs.ansible.com/ansible/2.5/scenario_guides/guide_aci.html)

**aci_build_1000.yml**
    This is a basic Cisco ACI playbook that prompts for configure items and then builds ACI configuration based upon files in the tenant_vars folder. this yaml specifically is to be used with the vmm_test_1000.yml file due to VRF configuration.
    this uses a vmm integration to deploy the EGP to vmware 6.5 vDS
    It uses a certificate setup for authentication
    review how to do a cert in ACI here [Ansible Cisco ACI Guide](https://docs.ansible.com/ansible/2.5/scenario_guides/guide_aci.html)

**aci_epg_update.yml**
    This is a basic Cisco ACI playbook that prompts for configure items and then updates the epg description so the change is viewed in the vmware dvs, a testing item only use
    It uses a certificate setup for authentication
    review how to do a cert in ACI here [Ansible Cisco ACI Guide](https://docs.ansible.com/ansible/2.5/scenario_guides/guide_aci.html)

**aci_cleanup.yml**
    This is a basic Cisco ACI playbook that prompts for configure items and then cleans up tenants built by previous scripts.

**vm_deploy.yml**
    This is a basic vmware playbook that prompts for configure items and deploys virtual machines based upon a file in the vm_vars folder.

**vm_cleanup.yml**
    This is a basic vmware playbook that prompts for configure items and then cleans up virtual machines configuration.

**ping_test_X.sh**
    ping_test_1.sh and ping_test_2.sh are simple bash scripts to ping hosts created by the vmm_vm_1.yml and vmm_vm_10.yml deployments

#### Sample TEST

    Deploy aci configuration for 10 epgs
    ```sh
    $ ansible-playbook aci_build.yml
    UserID: "cert_key_user"
    What is the name of your Variable File?: vmm_test_10.yml
    ```
    Deploy 10 vmware guests
    ```sh
    $ ansible-playbook vm_deploy.yml
    UserID: "vmware_creds"
    Password: "vmware_password"
    What is the name of your VM Variable File?: vmm_vm_10.yml
    ```
    Test ping
    ```sh
    $ bash ping_test_10.sh
    Fri Jul  6 15:10:00 CDT 2018
    node 10.241.160.5 is up
    node 10.241.160.13 is up
    node 10.241.160.21 is up
    node 10.241.160.29 is up
    node 10.241.160.37 is up
    node 10.241.160.45 is up
    node 10.241.160.53 is up
    node 10.241.160.61 is up
    node 10.241.160.69 is up
    ```