# Install LogDNA Repo to this machine
logdna_repo:
  pkgrepo.managed:
    - humanname: LogDNA Repo
    - name: deb http://repo.logdna.com stable main
    - key_url: https://s3.amazonaws.com/repo.logdna.com/logdna.gpg
    - file: /etc/apt/sources.list.d/logdna.list
    - refresh: True
    - require_in:
      - pkg: logdna-agent
