namespace: Newdesign
flow:
  name: Newdesign
  workflow:
    - Nesedisign:
        do:
          Newdesign.Nesedisign: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      Nesedisign:
        x: 400
        'y': 160
        navigate:
          95d53b6d-3a01-53ef-b314-35ee4d4e9c0a:
            targetId: 1e323d9a-6c0f-276a-a344-ab81cc706d4b
            port: SUCCESS
    results:
      SUCCESS:
        1e323d9a-6c0f-276a-a344-ab81cc706d4b:
          x: 800
          'y': 200
