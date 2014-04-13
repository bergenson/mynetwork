# pkg.install
vim:
  pkg:
    {% if grains['os_family'] == 'RedHat' %}
    - name: vim-enhanced
    {% elif grains['os_family'] == 'Debian' %}
    - name: vim
    {% endif %}
    - purged

{% if grains['os'] == 'Arch'%}
/etc/vimrc:
  file:
    - absent
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - makedirs: True
    - require:
      - pkg: vim
{% endif %}
