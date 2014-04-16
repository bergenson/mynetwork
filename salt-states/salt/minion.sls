
salt-minion:
  pkg:
    - latest
#    {% if grains['os'] == 'Ubuntu' %}
#    - require:
#      - pkgrepo: saltstack-ppa
#    {% endif %}
  service:
    - running
    - watch:
      - file: /etc/salt/minion

/etc/salt/minion:
    file:
        - managed
        - source: salt://salt/etc/salt/minion
        - template: jinja
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: salt-minion
