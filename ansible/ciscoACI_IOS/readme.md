# Ansible Playbook examples to configure Cisco ACI and validate IOS

## Playbooks

*all playbook items build with ansible 2.5*
**aci_build_validate.yml**
    This playbook builds a new tenant from scratch with bridge domain/end point group being named the same.
    It uses aci_rest module to do rest API for configurations that do not have a module.
    it has a second play which has IOS steps
    It uses a certificate setup for authentication
    review how to do a cert in ACI here [Ansible Cisco ACI Guide](https://docs.ansible.com/ansible/2.5/scenario_guides/guide_aci.html)