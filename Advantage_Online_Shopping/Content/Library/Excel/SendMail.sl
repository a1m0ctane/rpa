namespace: Excel
flow:
  name: SendMail
  workflow:
    - Send_Mail:
        do_external:
          14d6eacc-c41c-4e89-a139-63124c1376f4:
            - hostname: smtp.office365.com
            - port: '587'
            - from: amir.khan@microfocus.com
            - to: amir.khan@microfocus.com
            - subject: Hello from RPA
            - body: Hello this is a test
            - attachments: "C:\\Users\\khanamir\\Pictures\\ssx.PNG"
            - username: amir.khan@microfocus.com
            - password:
                value: null
                sensitive: true
            - enableTLS: 'true'
        navigate:
          - failure: FAILURE
          - success: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Send_Mail:
        x: 304.0138854980469
        'y': 58.37152099609375
        navigate:
          34c07a54-8f8c-be91-7ef8-c30d9dd13c62:
            targetId: 63a5b582-bf43-b5a2-70e3-2857d8f12e63
            port: failure
          9acbe179-7ada-cd62-4c4f-df844148b293:
            targetId: 67857d72-70c5-6110-cba2-10362728700d
            port: success
    results:
      FAILURE:
        63a5b582-bf43-b5a2-70e3-2857d8f12e63:
          x: 301
          'y': 270
      SUCCESS:
        67857d72-70c5-6110-cba2-10362728700d:
          x: 570
          'y': 59
