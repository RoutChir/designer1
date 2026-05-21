namespace: Hybrid
flow:
  name: CustomerFlow2
  workflow:
    - prueba_fich_conf_con_variable:
        do_external:
          185f9295-cd1d-40a7-8690-0b07bbc93d94: []
        navigate:
          - success: SUCCESS
          - failure: FAILURE
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      prueba_fich_conf_con_variable:
        x: 240
        'y': 200
        navigate:
          dbf27143-74ab-da0f-073a-5a21f19ce947:
            targetId: 90ac9af9-47de-dd6d-1449-0db6362c91be
            port: success
          6887a380-d351-c33a-a855-e9f98a8c5d03:
            targetId: 337bfe81-dc63-ddec-44aa-70ed01126bb4
            port: failure
    results:
      SUCCESS:
        90ac9af9-47de-dd6d-1449-0db6362c91be:
          x: 280
          'y': 80
      FAILURE:
        337bfe81-dc63-ddec-44aa-70ed01126bb4:
          x: 400
          'y': 240
