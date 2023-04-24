namespace: flod
flow:
  name: flow2
  workflow:
    - pyth1:
        do:
          flod.pyth1:
            - fname: chirashree
            - lname: rout
            - grade: nothello
        publish:
          - client: output_0
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyth1:
        x: 120
        'y': 200
        navigate:
          9dce4dec-9a27-9bb2-939d-a1b8b0190b6b:
            targetId: 9527a1ca-18c1-2313-ee2b-86b5899e09c1
            port: SUCCESS
    results:
      SUCCESS:
        9527a1ca-18c1-2313-ee2b-86b5899e09c1:
          x: 440
          'y': 280
