# Ansible Playbook examples to configure new items on Cisco ACI

## Playbooks

*all playbook items build with ansible 2.5*
**aci_new_build.yml**
    This playbook builds a new tenant from scratch with bridge domain/end point group being named the same.
    It uses aci_rest module to do rest API for configurations that do not have a module.
    It uses a username/password format, which on ACI 3.1 can have issues with to many commands (DoS) throwing a 503 error or login failures.

**aci_new_build_cert.yml**
    This playbook builds a new tenant from scratch with bridge domain/end point group being named the same. 
    It uses aci_rest module to do rest API for configurations that do not have a module.
    It uses a certificate setup for authentication
    review how to do a cert in ACI here [Ansible Cisco ACI Guide](https://docs.ansible.com/ansible/2.5/scenario_guides/guide_aci.html)

**aci_new_epg.yml**
    This playbook creates new Endpoint group, bridge domain, application profiles and correct AAEP mapping, without L3outs, tenant, vrf creations.
    It uses a username/password format, which on ACI 3.1 can have issues with to many commands (DoS) throwing a 503 error or login failures.

**aci_new_epg_cert.yml**
    This playbook creates new Endpoint group, bridge domain, application profiles and correct AAEP mapping, without L3outs, tenant, vrf creations.
    It uses a certificate setup for authentication
    review how to do a cert in ACI here [Ansible Cisco ACI Guide](https://docs.ansible.com/ansible/2.5/scenario_guides/guide_aci.html)
