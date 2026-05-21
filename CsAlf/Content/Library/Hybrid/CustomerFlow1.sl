namespace: Hybrid
flow:
  name: CustomerFlow1
  workflow:
    - prueba_fich_conf_error:
        do_external:
          84fe48b4-79e2-47e5-b20e-831a6d62ba78: []
        navigate:
          - failure: FAILURE
          - success: SUCCESS
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      prueba_fich_conf_error:
        x: 200
        'y': 160
        navigate:
          907aa735-9927-a95e-6c36-ba4fc864d126:
            targetId: be9ebbcf-9b0b-3dbe-42ec-24e0ae438524
            port: failure
          4501991a-07f1-ae81-5c41-b1941ab62c3d:
            targetId: c3e4a236-8dda-b710-72f4-f04b939ce899
            port: success
    results:
      SUCCESS:
        c3e4a236-8dda-b710-72f4-f04b939ce899:
          x: 360
          'y': 80
      FAILURE:
        be9ebbcf-9b0b-3dbe-42ec-24e0ae438524:
          x: 360
          'y': 320
