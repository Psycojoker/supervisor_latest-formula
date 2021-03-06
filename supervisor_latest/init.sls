supervisor_latest_dependancies:
  pkg.installed:
    - name: python-meld3
    - require_in:
      - pkg: supervisor_latest_pkg

supervisor_latest_pkg:
  pkg.installed:
    - sources:
      - supervisor: salt://supervisor_latest/supervisor_3.0b2-1_all.deb

supervisor:
  service.running

supervisor_latest-update:
  cmd.wait:
    - name: supervisorctl update
