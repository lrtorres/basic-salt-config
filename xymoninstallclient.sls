include:
  - includes.xymon.xymon

/home/xymon/client.tar:
  file.managed:
    {% if grains['cpuarch'] == 'x86_64' %}
    - source: salt://files/xymon/xymon-client64.tar
    {% elif grains['cpuarch'] == 'i686' %}
    - source: salt://files/xymon/xymon-client32.tar
    {% endif %}
    - user: xymon
    - group: xymon
    - mode: 600
  module.run:
  - require:
    - sls: includes.xymon.xymon
  - name: archive.tar
  - options: kxvf
  - tarfile: /home/xymon/client.tar
  - dest: /home/xymon
