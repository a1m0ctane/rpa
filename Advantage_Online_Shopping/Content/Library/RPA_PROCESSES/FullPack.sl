namespace: RPA_PROCESSES
flow:
  name: FullPack
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
          - SUCCESS: OrderLaptop
          - WARNING: OrderLaptop
          - FAILURE: FAILURE
    - OrderLaptop:
        do:
          Employee_Onboarding.OrderLaptop: []
        navigate:
          - SUCCESS: OrderWebCam
          - WARNING: OrderWebCam
          - FAILURE: FAILURE
    - OrderWebCam:
        do:
          Employee_Onboarding.OrderWebCam: []
        navigate:
          - SUCCESS: Keyboard
          - WARNING: Keyboard
          - FAILURE: FAILURE
    - Keyboard:
        do:
          Employee_Onboarding.Keyboard: []
        navigate:
          - SUCCESS: OrderNetsw
          - WARNING: OrderNetsw
          - FAILURE: FAILURE
    - OrderNetsw:
        do:
          Employee_Onboarding.OrderNetsw: []
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
        x: 40
        'y': 80
        navigate:
          58fb4eda-a075-7a4d-4108-6e778504d638:
            targetId: c9f24308-2408-2b10-44a1-0cc78e9eab1c
            port: FAILURE
      OrderLaptop:
        x: 304
        'y': 88
        navigate:
          f7ce9be7-03be-b43d-efa7-c966cdaad46f:
            targetId: c9f24308-2408-2b10-44a1-0cc78e9eab1c
            port: FAILURE
      OrderWebCam:
        x: 514
        'y': 87
        navigate:
          f7e68c9b-834e-d044-4de2-9d9e5d8daaff:
            targetId: c9f24308-2408-2b10-44a1-0cc78e9eab1c
            port: FAILURE
      Keyboard:
        x: 726
        'y': 87
        navigate:
          b458a450-cdab-596b-5b4a-3e0b9d4d46e6:
            targetId: c9f24308-2408-2b10-44a1-0cc78e9eab1c
            port: FAILURE
      OrderNetsw:
        x: 903
        'y': 95
        navigate:
          dc6a56cd-4fa6-82a1-5979-c82509074b0c:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: SUCCESS
          bd854a83-ae8d-9e95-eb43-c424fb6229ab:
            targetId: c9f24308-2408-2b10-44a1-0cc78e9eab1c
            port: FAILURE
          074813d2-23ea-9661-bb07-140a85cf3033:
            targetId: 732089fa-d59c-406f-e727-2bac2fbb77a2
            port: WARNING
    results:
      FAILURE:
        c9f24308-2408-2b10-44a1-0cc78e9eab1c:
          x: 373
          'y': 325
      SUCCESS:
        732089fa-d59c-406f-e727-2bac2fbb77a2:
          x: 906
          'y': 316
