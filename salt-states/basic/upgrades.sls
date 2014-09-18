{% if grains['os'] == 'Ubuntu' %}
apt-get dist-upgrade -y:
  cmd.run
{% endif %}

# works in Helium
#dist-upgrade:
#  pkg:
#    - uptodate

