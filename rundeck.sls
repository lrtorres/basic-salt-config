rundeck:
  group.present:
    - system: False
  user.present:
  - fullname: Rundeck Scheduler 
  - home: /home/rundeck
  - groups:
    - rundeck

/home/rundeck:
  file.directory:
  - user: rundeck
  - group: rundeck
  - mode: 755
  - makedirs: True
  - recurse:
    - user
    - group
    - mode
