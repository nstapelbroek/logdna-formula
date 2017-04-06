# Deal with config (provide commands to LogDNA-agent)
/etc/logdna.conf:
  file.managed:
    - source: salt://logdna/templates/logdna.conf.jinja
    - mode: 644
    - template: jinja
    - require_in:
      - service: logdna-agent
    - watch_in:
      - service: logdna-agent
