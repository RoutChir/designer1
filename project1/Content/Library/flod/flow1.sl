namespace: flod
flow:
  name: flow1
  workflow:
    - pyth2:
        do:
          flod.pyth2:
            - job_id: '23'
            - tool_region: "${get_sp('io.cloudslang.base.from')}"
            - operation: "${get_sp('io.cloudslang.base.hostname')}"
            - sse_config: '${operation}'
            - targets: '${sse_config}'
            - action: '${tool_region}'
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyth2:
        x: 40
        'y': 200
        navigate:
          ce6c2342-ceb7-e048-a1c0-d6b6e237247c:
            targetId: 60411846-ad8a-ed47-77d6-c7cfbbaa16a1
            port: SUCCESS
    results:
      SUCCESS:
        60411846-ad8a-ed47-77d6-c7cfbbaa16a1:
          x: 440
          'y': 200
