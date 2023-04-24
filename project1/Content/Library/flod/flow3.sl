namespace: flod
flow:
  name: flow3
  workflow:
    - pyth3:
        do:
          flod.pyth3: []
        publish: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyth3:
        x: 160
        'y': 200
        navigate:
          5e81ea91-f546-40ab-87b6-4153048f5c7c:
            targetId: e95cc4db-82d9-7f2e-3553-322b3ab4e7ce
            port: SUCCESS
    results:
      SUCCESS:
        e95cc4db-82d9-7f2e-3553-322b3ab4e7ce:
          x: 400
          'y': 200
