{% from "sudoers/map.jinja" import pkgs with context %}

sudo:
  pkg.installed:
    - name: {{ pkgs.sudo }}
  file.managed:
    - name: /etc/sudoers
    - user: root
    - group: root
    - mode: 440
    - template: jinja
    - source: salt://sudoers/files/sudoers
    - require:
      - pkg: sudo

