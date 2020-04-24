namespace: RPA_PROCESSES
flow:
  name: OrderLaptop
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
    - OrderLaptop:
        do:
          Employee_Onboarding.OrderLaptop:
            - First: '${FirstName}'
            - Last: '${LastName}'
            - Phone: '${Phone}'
            - Email: '${Email}'
            - Address: '${Address}'
            - City: '${City}'
            - ZipCode: '${ZipCode}'
            - Country: '${Country}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: CUSTOM
          - FAILURE: FAILURE
  results:
    - FAILURE
    - CUSTOM
    - SUCCESS
extensions:
  graph:
    steps:
      OrderLaptop:
        x: 354.0138854980469
        'y': 142.37152099609375
        navigate:
          47de1168-84cd-6d38-4872-2b366f6f7aaf:
            targetId: c9f24308-2408-2b10-44a1-0cc78e9eab1c
            port: FAILURE
          86a8c3f5-f5c3-7460-915e-b6516536550c:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: SUCCESS
          17bdbcec-4821-e6c9-8f77-30f2de2e4f15:
            targetId: 744db187-1928-1fc0-fa15-b6f912059221
            port: WARNING
    results:
      CUSTOM:
        744db187-1928-1fc0-fa15-b6f912059221:
          x: 607.0138549804688
          'y': 62.05207824707031
      SUCCESS:
        732089fa-d59c-406f-e727-2bac2fbb77a2:
          x: 703.0138549804688
          'y': 215.0520782470703
      FAILURE:
        c9f24308-2408-2b10-44a1-0cc78e9eab1c:
          x: 526.0138549804688
          'y': 308.0520935058594
