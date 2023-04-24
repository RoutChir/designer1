namespace: flod
flow:
  name: flow4
  workflow:
    - pyth4:
        do:
          flod.pyth4:
            - api: 'https://api.github.com/events'
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyth4:
        x: 40
        'y': 200
        navigate:
          559e5105-9bd3-f296-bab9-de58c111436b:
            targetId: ff44b911-b171-3ceb-86a9-0be3ab4e0a71
            port: SUCCESS
    results:
      SUCCESS:
        ff44b911-b171-3ceb-86a9-0be3ab4e0a71:
          x: 400
          'y': 200
