namespace: Floder1
flow:
  name: Flow3
  workflow:
    - Notify:
        do_external:
          29baf272-4192-4862-9436-2c6f601b42a9:
            - notifyData: hello
            - notifyMethod: message
        navigate:
          - success: SUCCESS
          - failure: FAILURE_1
  results:
    - SUCCESS
    - FAILURE_1
extensions:
  graph:
    steps:
      Notify:
        x: 400
        'y': 120
        navigate:
          2fd4c46d-beeb-5940-3747-6eaa513efff3:
            targetId: 5c3c77db-424f-d423-7c61-f3a3f561be6d
            port: success
          ca8467c7-9fb7-0466-9bed-9a71af93bd8f:
            targetId: 50321e15-1416-61ed-041e-2bff6b16e8d1
            port: failure
    results:
      SUCCESS:
        5c3c77db-424f-d423-7c61-f3a3f561be6d:
          x: 600
          'y': 120
      FAILURE_1:
        50321e15-1416-61ed-041e-2bff6b16e8d1:
          x: 200
          'y': 120
