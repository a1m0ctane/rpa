namespace: Demo
flow:
  name: Register_User
  inputs:
    - user: SparDemo
    - email: spar.demo@microfocus.com
  workflow:
    - RegisterUserAOS:
        do:
          Demo.RegisterUserAOS:
            - user: '${user}'
            - email: '${email}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      RegisterUserAOS:
        x: 379.0138854980469
        'y': 109.37152099609375
        navigate:
          cb43fdca-dd49-decb-5131-366d4d69b914:
            targetId: d48655bd-3579-6815-b73d-7ee6d76a78b6
            port: FAILURE
          87e63c69-275e-189f-e314-c767c1139cc1:
            targetId: d43dc2f0-7ee4-486c-5282-ab593d986c06
            port: SUCCESS
          a8e61082-48e6-bdba-228c-fd443a8f4eea:
            targetId: d43dc2f0-7ee4-486c-5282-ab593d986c06
            port: WARNING
    results:
      SUCCESS:
        d43dc2f0-7ee4-486c-5282-ab593d986c06:
          x: 622.0138549804688
          'y': 78.05207824707031
      FAILURE:
        d48655bd-3579-6815-b73d-7ee6d76a78b6:
          x: 383.0138854980469
          'y': 270.0520935058594
