xymon:
  group.present:
    - system: False
  user.present:
  - fullname: Xymon Monitoring
  - home: /home/xymon
  - groups:
    - xymon

/home/xymon:
  file.directory:
  - user: xymon
  - group: xymon
  - mode: 755
  - makedirs: True
  - recurse:
    - user
    - group
    - mode
