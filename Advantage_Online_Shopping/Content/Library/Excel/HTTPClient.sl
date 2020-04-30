namespace: Excel
flow:
  name: HTTPClient
  workflow:
    - Http_Client_Post:
        do_external:
          f389fb81-422b-4a18-b6b9-70264bfda2cf:
            - url: 'https://api.sendgrid.com/v3/mail/send'
            - authType: digest
            - headers: 'Authorization: Bearer SG.IxCB2Vo5Q4Kp25A75nvW3Q.p0yLv9pnMMpo7QoidVvgpkSSIgngvj22WfruzjvFB5Q;Content-Type: application/json'
            - body: '{"personalizations": [{"to": [{"email": "khanamir@microfocus.com"}]}],"from": {"email": "amir.khan@embrace-devops.com"},"subject": "RPA OO Sending with SendGrid is Fun","content": [{"type": "text/plain","value": "and easy to do anywhere, even with cURL"}]}'
            - method: POST
        publish: []
        navigate:
          - success: SUCCESS
          - failure: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Http_Client_Post:
        x: 117
        'y': 166
        navigate:
          2bdf995a-dfae-6e26-1f9e-4294e0e655ae:
            targetId: 8af11d3f-b480-9639-898b-6a0dd4084c56
            port: failure
          395981ba-1a27-78fd-1a1e-22f38ca47144:
            targetId: 7eeec8ac-2d54-00f0-6121-5dbb489b81db
            port: success
    results:
      FAILURE:
        8af11d3f-b480-9639-898b-6a0dd4084c56:
          x: 367.0138854980469
          'y': 341.0520935058594
      SUCCESS:
        7eeec8ac-2d54-00f0-6121-5dbb489b81db:
          x: 543
          'y': 188
