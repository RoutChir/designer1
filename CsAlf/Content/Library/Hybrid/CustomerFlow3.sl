namespace: Hybrid
flow:
  name: CustomerFlow3
  workflow:
    - prueba_fich_conf_sin_variable:
        do:
          Pruebas.prueba_fich_conf_sin_variable: []
        navigate:
          - FAILURE_1: FAILURE
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      prueba_fich_conf_sin_variable:
        x: 160
        'y': 240
        navigate:
          5414e2e0-e107-be4b-89d3-1536d568bff9:
            targetId: 81c1bb7a-0d0a-dcf7-eeb6-d64bd9693931
            port: SUCCESS
          b96b65c9-bc14-5eda-a26e-bbe9a45e91c0:
            targetId: 6d777b47-006c-4115-6d08-6e5864c72600
            port: FAILURE_1
    results:
      SUCCESS:
        81c1bb7a-0d0a-dcf7-eeb6-d64bd9693931:
          x: 360
          'y': 240
      FAILURE:
        6d777b47-006c-4115-6d08-6e5864c72600:
          x: 320
          'y': 160
