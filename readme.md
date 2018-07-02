# Ansible use case examples

Ansible proof of concept configuration playbooks for different platforms

## Current Labs

### ciscoACI

Ansible playbook examples for Cisco ACI (tested on 3.2 EFT)

### ciscoACI_IOS

Ansible playbook examples for Cisco ACI (tested on 3.2 EFT) and runs against an IOS device for validation,(tested on IOS-XE 3.9.00.E)

### ciscoACIvmm

Ansible playbook examples for Cisco ACI with a vmware dvs (6.5) (tested on 3.2 EFT)

### ciscoACIvmmTesting

Ansible playbook examples for Cisco ACI with a vmware dvs (6.5) (tested on 3.2 EFT) that has multiple different test plans
  
    - vmm_test_10.yml creates 10 EPGs in 2 tenants (unique IP for each EPG/BD)
    - vmm_test_100.yml creates 100 EPGs in 4 tenants (unique IP for each EPG/BD)
    - vmm_test_1000.yml creates 1000 EPGs in 10 tenants (in each Tenant IP addresses are uniqe)