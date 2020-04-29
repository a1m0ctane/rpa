namespace: User_Management
operation:
  name: XLSUserImport
  inputs:
  - ImportFile: C:\Users\khanamir\Documents\RPA Data\RegisterUsers.xlsx
  sequential_action:
    gav: com.microfocus.seq:User_Management.XLSUserImport:1.0.0
    external: true
  outputs:
  - ResultFile:
      robot: true
      value: ${ResultFile}
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
