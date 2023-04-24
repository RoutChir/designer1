namespace: flod
operation:
  name: pyth5
  python_action:
    use_jython: false
    script: "import time\r\nimport timeout_decorator\r\nfrom sys import platform\r\n@timeout_decorator.timeout(5)\r\ndef execute():\r\n    print(\"Start\")\r\n    for i in range(1,10):\r\n        time.sleep(1)\r\n        print(\"{} seconds have passed\".format(i))\r\n\r\nif __name__ == '__main__':\r\n    execute()"
  outputs:
    - installed_modules
    - output
  results:
    - SUCCESS
