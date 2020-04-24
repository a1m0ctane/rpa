namespace: RPA_PROCESSES
flow:
  name: OrderWebcam
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
    - OrderWebCam:
        do:
          Employee_Onboarding.OrderWebCam:
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
      OrderWebCam:
        x: 348.0138854980469
        'y': 196.0520782470703
        navigate:
          4fc606bd-5d8c-69ca-e720-74d9a048a3d8:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: SUCCESS
          ec528576-d988-b0c7-6281-e6c4d397e7d6:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: WARNING
          37a551f6-3863-f1c3-d41c-b54fd7d5956d:
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
