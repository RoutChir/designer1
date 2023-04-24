namespace: flod
operation:
  name: pyth4
  inputs:
    - url:
        required: false
    - api
  python_action:
    use_jython: false
    script: "# do not remove the execute function\nimport sys\nimport requests\nimport charset_normalizer\nimport time\ndef execute(api):\n     reason = None\n     try:\n        response = requests.get(f\"{api}\", verify=False,timeout=0.0001)\n        if response.status_code == 200:\n            reason=response.json()\n           # self.formatted_print(response.json())\n        else:\n            print(f\"Hello person, there's a {response.status_code} error with your request\")\n     except Exception as e:\n         time.sleep(3)\n         reason = str(e)\n         return {\"Error\" : reason}\n     return {\"success_result\": reason}        \n       \n\n# def execute():\n#  try:\n#     numerator = 10\n#     denominator = 0\n#     reason = None\n#     result = numerator/denominator\n\n#     print(result)\n#  except Exception as e:\n#         reason = str(e)\n#         reason = 'Failed arithmatic error:' + str(reason)\n#  return {\"Error\": reason}"
  outputs:
    - result
    - Error
    - success_result
  results:
    - SUCCESS
