namespace: Employee_Onboarding
operation:
  name: Keyboard
  inputs:
  - FirstName: Amir
  - LastName: Khan
  - Phone: '00417842723923'
  - Mail: amir.khan@microfocus.com
  - Address: Ueberlandstrasse 1
  - City: Zurich
  - ZipCode: '8600'
  - Country: Switzerland
  - Note: White Sureface
  sequential_action:
    gav: com.microfocus.seq:Employee_Onboarding.Keyboard:1.0.0
    external: true
  outputs:
  - Confirmation:
      robot: true
      value: ${Confirmation}
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
