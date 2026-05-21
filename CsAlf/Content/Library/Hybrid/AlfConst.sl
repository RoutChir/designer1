namespace: Hybrid
flow:
  name: AlfConst
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '5'
            - max: '45'
        navigate:
          - SUCCESS: ConstantsRandom
          - FAILURE: FAILURE
    - ConstantsRandom:
        do_external:
          7da4be9d-4cfb-4634-9d90-18112de93f4d: []
        navigate:
          - success: SUCCESS
          - failure: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ConstantsRandom:
        x: 440
        'y': 240
        navigate:
          f4732fd4-1a4f-3d04-3585-eaf274f41124:
            targetId: 9b40413a-721c-3c19-e718-0137422dc4d4
            port: success
          3eaa1f98-3ca5-1327-50a0-dc1890bc90ca:
            targetId: d61cb9ab-ff6d-1e9b-54a3-dccc402dd6d0
            port: failure
      random_number_generator:
        x: 280
        'y': 240
        navigate:
          244690ed-aee6-91cf-d5db-5c7603146161:
            targetId: d61cb9ab-ff6d-1e9b-54a3-dccc402dd6d0
            port: FAILURE
    results:
      SUCCESS:
        9b40413a-721c-3c19-e718-0137422dc4d4:
          x: 600
          'y': 240
      FAILURE:
        d61cb9ab-ff6d-1e9b-54a3-dccc402dd6d0:
          x: 360
          'y': 440
