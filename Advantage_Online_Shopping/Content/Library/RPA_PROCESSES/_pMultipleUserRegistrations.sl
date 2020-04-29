namespace: RPA_PROCESSES
flow:
  name: _pMultipleUserRegistrations
  inputs:
    - ImportFile: "C:\\Users\\khanamir\\Documents\\RPA Data\\RegisterUsers.xlsx"
  workflow:
    - XLSUserImport:
        do:
          User_Management.XLSUserImport:
            - ImportFile: '${ImportFile}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: CUSTOM
          - FAILURE: FAILURE
  outputs:
    - ResultFile
  results:
    - FAILURE
    - SUCCESS
    - CUSTOM
extensions:
  graph:
    steps:
      XLSUserImport:
        x: 415.0138854980469
        'y': 141.0520782470703
        navigate:
          b730eae7-1476-73a6-1368-32e0afbd474a:
            targetId: efd233ad-8bd1-8e8c-13de-54a10518cb78
            port: WARNING
          bae39ad3-ff3d-2ee0-c6c7-d45958f09035:
            targetId: c1fcf8c7-8fcd-4a18-a65b-bc032c2ec296
            port: SUCCESS
          66e98dd1-06d2-825c-ea82-cb2343ce6755:
            targetId: 0f6b942a-8ac7-f051-ac15-ac02fb45ec00
            port: FAILURE
    results:
      FAILURE:
        0f6b942a-8ac7-f051-ac15-ac02fb45ec00:
          x: 390
          'y': 326
      SUCCESS:
        c1fcf8c7-8fcd-4a18-a65b-bc032c2ec296:
          x: 673
          'y': 82
      CUSTOM:
        efd233ad-8bd1-8e8c-13de-54a10518cb78:
          x: 178
          'y': 67
