namespace: Newdesign
flow:
  name: Flowdes
  workflow:
    - Newdesign:
        do:
          Newdesign.Newdesign:
            - num1: '0'
            - num2: '300'
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      Newdesign:
        x: 240
        'y': 240
        navigate:
          ab32628d-47ec-a1b3-0da4-a24b242cd238:
            targetId: aaecbf58-1d57-413f-3c92-66e7d7c644c2
            port: SUCCESS
    results:
      SUCCESS:
        aaecbf58-1d57-413f-3c92-66e7d7c644c2:
          x: 600
          'y': 280
