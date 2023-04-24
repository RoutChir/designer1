namespace: flod
operation:
  name: pyth1
  inputs:
    - url:
        required: false
    - fname:
        required: true
    - username:
        required: false
    - password:
        required: false
    - lname:
        required: true
    - grade
  python_action:
    use_jython: false
    script: "import sys\nimport time\ndef execute(grade,fname,lname):\n\tif grade == 'hello':\n\t\treturn {\"result\": fname + lname}\n\tif grade == 'h':\n\t\treturn {\"result\": fname + lname}\n\tif grade == 'e':\n\t\treturn {\"result\": fname + lname}\n\tif grade == 'hello':\n\t\treturn {\"result\": fname + lname}\n\tif grade == 'h':\n\t\treturn {\"result\": fname + lname}\n\tif grade == 'e':\n\t\treturn {\"result\": fname + lname}\t\n\telse:\n\t\ttime.sleep(3)\n\t\treturn {\"result\": fname + grade}"
  outputs:
    - result
  results:
    - SUCCESS
