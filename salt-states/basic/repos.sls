#include:
#  {% if grains['os_family'] == 'RedHat' %}
#  - epel
#  {% endif %}
add_repos:
  pkg:
    - mod_repo
    - name: "ppa:saltstack/salt"

