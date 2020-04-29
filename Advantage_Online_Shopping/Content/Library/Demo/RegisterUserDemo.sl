namespace: Demo
flow:
  name: RegisterUserDemo
  inputs:
    - username: rpa.demo
    - email: rpa.demo@microfocus.com
  workflow:
    - RegisterUser:
        do:
          Demo.RegisterUser:
            - username: '${username}'
            - email: '${email}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: CUSTOM
          - FAILURE: FAILURE
  results:
    - FAILURE
    - SUCCESS
    - CUSTOM
extensions:
  graph:
    steps:
      RegisterUser:
        x: 225
        'y': 93
        navigate:
          e57b5d22-2068-ed17-5cb6-e7b60c59f7f1:
            targetId: a7ba4035-ce1d-eae7-faf9-a8e330ffe274
            port: FAILURE
          75b35109-d208-3c85-6712-0abbb0804003:
            targetId: a07afcc2-b239-ffd5-4b8d-83697a74dcc5
            port: SUCCESS
          2c67d44a-3137-c9bf-16a0-bc64df9e9276:
            targetId: dcd0eeec-fd3a-7c6d-7481-f331e6817f62
            port: WARNING
    results:
      SUCCESS:
        a07afcc2-b239-ffd5-4b8d-83697a74dcc5:
          x: 517
          'y': 91
      FAILURE:
        a7ba4035-ce1d-eae7-faf9-a8e330ffe274:
          x: 217
          'y': 319
      CUSTOM:
        dcd0eeec-fd3a-7c6d-7481-f331e6817f62:
          x: 25
          'y': 95
