namespace: Newdesign
flow:
  name: Flowsystemtest
  workflow:
    - Flowdes:
        do:
          Newdesign.Flowdes: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      Flowdes:
        x: 440
        'y': 120
        navigate:
          cdc553ff-91d0-4838-650e-a5619fa599d6:
            targetId: f4f345ff-c893-fd8b-40ae-f6b629569a0d
            port: SUCCESS
    results:
      SUCCESS:
        f4f345ff-c893-fd8b-40ae-f6b629569a0d:
          x: 640
          'y': 160
