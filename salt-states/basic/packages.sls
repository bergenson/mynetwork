basic-packages:
    pkg:
        - installed
        - names:
            {% if grains['os_family'] == 'RedHat' %}
            - tmux
            {% elif grains['os_family'] == 'Debian' %}
            - sudo
            - openssh-client
            - openssh-server
            - tmux
            - htop
            - iotop
            - iftop
            - git
            {% endif %}
