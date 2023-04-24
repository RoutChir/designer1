namespace: flod
flow:
  name: flow5
  workflow:
    - pyth5:
        do:
          flod.pyth5: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyth5:
        x: 200
        'y': 200
        navigate:
          d077e153-1f61-5ed5-6ec9-5e28db536058:
            targetId: 2d6a885b-537d-9c2c-b2d1-404fbf450dde
            port: SUCCESS
    results:
      SUCCESS:
        2d6a885b-537d-9c2c-b2d1-404fbf450dde:
          x: 400
          'y': 200
