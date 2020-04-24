namespace: Employee_Onboarding
operation:
  name: OrderLaptop
  inputs:
  - First: Amir
  - Last: Khan
  - Phone: '0041792656547'
  - Email: amir.khan@microfocus.com
  - Address: Ueberlandstrasse 1
  - City: Duebendorf
  - ZipCode: '8600'
  - Country: Switzerland
  sequential_action:
    gav: com.microfocus.seq:Employee_Onboarding.OrderLaptop:1.0.0
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
