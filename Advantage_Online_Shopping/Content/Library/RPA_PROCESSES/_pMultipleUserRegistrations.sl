namespace: RPA_PROCESSES
flow:
  name: _pMultipleUserRegistrations
  inputs:
    - ImportFile: "C:\\Users\\khanamir\\Documents\\RPA Data\\RegisterUsers.xlsx"
  workflow:
    - Register_Users_By_Importing_Excel:
        do:
          User_Management.Register_Users_By_Importing_Excel:
            - ImportFile: '${ImportFile}'
        publish:
          - ResultFile
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
      Register_Users_By_Importing_Excel:
        x: 386
        'y': 145
        navigate:
          63131ac7-bdd0-bbad-9360-6e678009163c:
            targetId: efd233ad-8bd1-8e8c-13de-54a10518cb78
            port: WARNING
          bc976474-cadf-2efb-fc77-269ef04e149b:
            targetId: c1fcf8c7-8fcd-4a18-a65b-bc032c2ec296
            port: SUCCESS
          291bb5ef-9397-2c39-eee5-2955fec41e24:
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
