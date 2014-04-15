basic-packages:
    pkg:
        - installed
        - names:
            {% if grains['os-family'] == RedHat %]
            {% elif grains['os-family'] == Debian %}
            - sudo
            - openssh-client
            - openssh-server
            - tmux
            - htop
            - iotop
            - iftop
            - git
            {% endif %}
