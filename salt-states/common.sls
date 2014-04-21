include:
  - vim
  - salt.minion
  - basic.packages
  - openssh.client
  {% if grains['os_family'] == 'RedHat' %}
  - epel
  {% endif %}
#  - sudoers
#  - add repos in basic.repo and upgrade all in init.sls
