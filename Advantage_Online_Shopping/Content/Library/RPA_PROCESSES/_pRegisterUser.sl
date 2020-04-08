namespace: RPA_PROCESSES
flow:
  name: _pRegisterUser
  inputs:
    - Username: AmirKhan1982
    - Password:
        default: 'Abcd123!'
        sensitive: true
    - Email: amir@khan.com
    - Firstname:
        default: Amir
        required: false
    - Lastname:
        default: Khan
        required: false
    - Phone:
        default: 0041 79 265 6547
        required: false
    - Address:
        default: Ueberlandstrasse 1
        required: false
    - City:
        default: Duebendorf
        required: false
    - Postalcode:
        default: '8600'
        required: false
    - Region:
        default: ZH
        required: false
    - Country:
        default: Switzerland
        required: false
  workflow:
    - Register_User:
        do:
          User_Management.Register_User:
            - Username: '${Username}'
            - Password:
                value: '${Password}'
                sensitive: true
            - Email: '${Email}'
            - Firstname: '${Firstname}'
            - Lastname: '${Lastname}'
            - PhoneNumber: '${Phone}'
            - Country: '${Country}'
            - Address: '${Address}'
            - Postalcode: '${Postalcode}'
            - City: '${City}'
            - Region: '${Region}'
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
      Register_User:
        x: 196
        'y': 88
        navigate:
          da1a472a-8e67-d1a4-a3f5-a247d3e638ef:
            targetId: b3eae12b-951c-0f93-95cc-874604b26e72
            port: SUCCESS
          92935fe4-8326-036e-472b-4b1ace6c6fe5:
            targetId: 13c72207-82f5-b0dd-12bc-b262c67ae2e7
            port: FAILURE
          4a9edcfa-f0d8-5bc7-e763-ab8d7e84fc30:
            targetId: e1054cf7-2696-6444-0c91-5069b4973a7a
            port: WARNING
    results:
      SUCCESS:
        b3eae12b-951c-0f93-95cc-874604b26e72:
          x: 575
          'y': 114
      FAILURE:
        13c72207-82f5-b0dd-12bc-b262c67ae2e7:
          x: 568
          'y': 199
      CUSTOM:
        e1054cf7-2696-6444-0c91-5069b4973a7a:
          x: 515
          'y': -5
