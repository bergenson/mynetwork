base:
  '*':
    - common
    - salt.minion
  'virt:virtual':
    - match: grain
    - is-virtual
