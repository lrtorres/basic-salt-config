openssh.x86_64:
  pkg: 
    - installed

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://files/ssh/sshd_config
    - user: root
    - group: root
    - mode: 600

sshd:
  service:
  - running
  - watch:
    - file: /etc/ssh/sshd_config
  - require:
    - pkg: openssh.x86_64
