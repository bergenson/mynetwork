#include:
#  {% if grains['os_family'] == 'RedHat' %}
#  - epel
#  {% endif %}

{% if grains['os'] == 'Ubuntu' %}
ppa_required:
  pkg.installed:
    - pkgs:
      - python-software-properties
      # bug in 13.10
      - python-pycurl

ppa_add:
  pkgrepo.managed:
    - ppa: saltstack/salt
{% endif %}
