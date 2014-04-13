/etc/sudoers.d/local:
    file:
        - managed
        - source: salt://sudoers/etc/sudoers
        - user: root
        - group: root
        - mode: 440
        - require:
            - pkg: sudo
