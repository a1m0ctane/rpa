namespace: User_Management
operation:
  name: Register_User
  inputs:
  - Username: AmirKhan
  - Password:
      default: Abcd123!
      sensitive: true
  - Email: amir@khan.com
  - Firstname: Amir
  - Lastname: Khan
  - PhoneNumber: '+41792656547'
  - Country: Switzerland
  - Address: Ueberlandstrasse 1
  - Postalcode: '8600'
  - City: Duebendorf
  - Region: Zurich
  sequential_action:
    gav: com.microfocus.seq:User_Management.Register_User:1.0.0
    external: true
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
