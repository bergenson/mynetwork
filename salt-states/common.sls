include:
  - vim
  - salt.minion
  - basic.packages
  {% if grains['os_family'] == 'RedHat' %}
  - epel
  {% endif %}
#  - sudoers
#  - add repos in basic.repo and upgrade all in init.sls
