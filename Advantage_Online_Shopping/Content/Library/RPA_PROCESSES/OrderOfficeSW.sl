namespace: RPA_PROCESSES
flow:
  name: OrderOfficeSW
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
    - OrderNetsw:
        do:
          Employee_Onboarding.OrderNetsw:
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
      OrderNetsw:
        x: 281
        'y': 134
        navigate:
          e85aa50d-ef6d-981a-04e6-d6b7c488df33:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: SUCCESS
          2df12e0b-b470-cb6f-0df4-ddd87058045a:
            targetId: c9f24308-2408-2b10-44a1-0cc78e9eab1c
            port: FAILURE
          d567ffef-c317-1a32-3201-6478c92a2f43:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: WARNING
    results:
      FAILURE:
        c9f24308-2408-2b10-44a1-0cc78e9eab1c:
          x: 526.0138549804688
          'y': 308.0520935058594
      SUCCESS:
        732089fa-d59c-406f-e727-2bac2fbb77a2:
          x: 703.0138549804688
          'y': 215.0520782470703
