namespace: Hybrid
flow:
  name: AflUserPrompt
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '5'
            - max: '45'
        navigate:
          - SUCCESS: promptUserRandomNum
          - FAILURE: FAILURE
    - promptUserRandomNum:
        do_external:
          d5106b21-4995-4583-8ab9-9dc4b88047b8: []
        navigate:
          - failure: FAILURE
          - success: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      random_number_generator:
        x: 228.19998168945312
        'y': 182.39999389648438
        navigate:
          85584596-8b32-35f6-b625-632e2ff49bd8:
            targetId: 5eceeffc-9d0b-1d1e-f448-9a8226e3254e
            port: FAILURE
      promptUserRandomNum:
        x: 400
        'y': 200
        navigate:
          f8e938ce-f0d9-1697-a1af-ceacef244103:
            targetId: 5eceeffc-9d0b-1d1e-f448-9a8226e3254e
            port: failure
          a4b2a392-8f83-2ab0-f615-3ce1aafb4b57:
            targetId: 024bbd11-da37-8daf-3c75-d26e850e047c
            port: success
    results:
      FAILURE:
        5eceeffc-9d0b-1d1e-f448-9a8226e3254e:
          x: 360
          'y': 400
      SUCCESS:
        024bbd11-da37-8daf-3c75-d26e850e047c:
          x: 600
          'y': 200
