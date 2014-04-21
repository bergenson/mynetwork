{% from "basic/map.jinja" import map with context %}
basic-packages:
  pkg:
    - installed
    - pkgs: {{ map.pkgs|json }}
