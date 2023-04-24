namespace: flod
operation:
  name: pyth6
  python_action:
    use_jython: false
    script: "def execute(): \r\n    import numpy\r\n    x = numpy.array([[1,2],[3,4]])\r\n    return {\"output\": str(numpy.sum(x))}"
  results:
    - SUCCESS
