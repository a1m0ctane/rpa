namespace: RPA_PROCESSES
flow:
  name: KeyboardMice
  inputs:
    - FirstName: Amir
    - LastName: Khan
    - Phone: '0041792656547'
    - Email: amir.khan@microfocus.com
    - Address: Ueberlandstrasse 1
    - City: Duebendorf
    - ZipCode: '8600'
    - Country: Switzerland
    - AdditionalNotes: Please with white surface
  workflow:
    - Keyboard:
        do:
          Employee_Onboarding.Keyboard:
            - FirstName: '${FirstName}'
            - LastName: '${LastName}'
            - Phone: '${Phone}'
            - Mail: '${Email}'
            - Address: '${Address}'
            - City: '${City}'
            - ZipCode: '${ZipCode}'
            - Country: '${Country}'
            - Note: '${AdditionalNotes}'
        publish:
          - Confirmation
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: FAILURE
  outputs:
    - Confirmation: '${Confirmation}'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Keyboard:
        x: 374.0138854980469
        'y': 190.0520782470703
        navigate:
          c62c9c7a-a665-bf88-097d-ae07fb811976:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: WARNING
          451dfcd8-dc3d-e126-f430-e9450066c84a:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: SUCCESS
          61a39919-be44-03cb-5e67-ad25587eddc8:
            targetId: c9f24308-2408-2b10-44a1-0cc78e9eab1c
            port: FAILURE
    results:
      FAILURE:
        c9f24308-2408-2b10-44a1-0cc78e9eab1c:
          x: 526.0138549804688
          'y': 308.0520935058594
      SUCCESS:
        732089fa-d59c-406f-e727-2bac2fbb77a2:
          x: 703.0138549804688
          'y': 215.0520782470703
