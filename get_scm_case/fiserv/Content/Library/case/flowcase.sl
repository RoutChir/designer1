namespace: case
flow:
  name: flowcase
  workflow:
    - Blank_Flow:
        do_external:
          6c8adf6c-e8c0-4aac-ba82-e255637ab561: []
        navigate:
          - success: SUCCESS
          - failure: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Blank_Flow:
        x: 280
        'y': 160
        navigate:
          0db8260b-6115-5fe6-04e5-a46e6fae3d5c:
            targetId: 09f985ae-6db0-b2a6-7d08-33d6228a22aa
            port: success
    results:
      SUCCESS:
        09f985ae-6db0-b2a6-7d08-33d6228a22aa:
          x: 480
          'y': 200
