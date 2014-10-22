splunk:
  group.present:
    - system: False
  user.present:
  - fullname: Splunk Log Engine
  - home: /home/splunk
  - groups:
    - splunk

/home/splunk:
  file.directory:
  - user: splunk
  - group: splunk
  - mode: 755
  - makedirs: True
  - recurse:
    - user
    - group
    - mode
