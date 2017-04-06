extend:
  logdna-agent:
      service.running:
      - enable: True
      - reload: False
      - watch:
        - pkg: logdna-agent
      - require:
        - pkg: logdna-agent
