{% from "vim/map.jinja" import vim with context %}

pyflakes_vimfiles:
  file.recurse:
    - name: {{ vim.share_dir }}
    - source: salt://vim/files/pyflakes
