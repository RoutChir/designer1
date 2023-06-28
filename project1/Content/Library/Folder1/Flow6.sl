namespace: Folder1
flow:
  name: Flow6
  workflow:
    - Sleep:
        do_external:
          d1bbf441-824a-450e-afae-2ddec0e0f35e:
            - seconds: '30'
        navigate:
          - success: SUCCESS
          - failure: FAILURE_1
  results:
    - SUCCESS
    - FAILURE_1
extensions:
  graph:
    steps:
      Sleep:
        x: 400
        'y': 80
        navigate:
          112db3cb-dcae-387f-38f7-3f988b262c45:
            targetId: 57b2aa6c-df9d-ab08-00c7-4cd28cee3770
            port: failure
          3186876e-f403-42c4-ab75-263d31f61bae:
            targetId: 69779812-17f3-e559-c65e-91cfd72e9bbd
            port: success
    results:
      SUCCESS:
        69779812-17f3-e559-c65e-91cfd72e9bbd:
          x: 640
          'y': 80
      FAILURE_1:
        57b2aa6c-df9d-ab08-00c7-4cd28cee3770:
          x: 440
          'y': 240
