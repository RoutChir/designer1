namespace: flod
operation:
  name: pyth3
  inputs:
    - string1:
        required: false
    - string2:
        required: false
    - name:
        required: false
  python_action:
    use_jython: false
    script: "def execute():\r\n    import subprocess\r\n    import sys\r\n    # leave empty string if you don't need a proxy\r\n    proxy = \"\"\r\n    # comma separated list of package names\r\n    packages = \"numpy,pandas\"\r\n    for package in packages.split(\",\"):    \r\n        subprocess.run([sys.executable, \"-m\", \"pip\", \"--proxy\", proxy, \"install\", package])"
  outputs:
    - result
    - output
  results:
    - SUCCESS
