namespace: RPA_PROCESSES
flow:
  name: OrderMobile
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
    - OrderMobile:
        do:
          Employee_Onboarding.OrderMobile:
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
      OrderMobile:
        x: 322
        'y': 197
        navigate:
          9d0b18b0-7f31-a17f-5969-0f1dbac5be7b:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: SUCCESS
          f127f93f-c3ec-0b7b-5b5e-252d77f1c1f5:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: WARNING
          58fb4eda-a075-7a4d-4108-6e778504d638:
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
