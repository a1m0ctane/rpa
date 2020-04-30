namespace: Excel
flow:
  name: Excel_GetData
  workflow:
    - New_Excel_Document:
        do_external:
          9d21ca68-7d03-4fb3-9478-03956532bf6f:
            - excelFileName: "c:\\temp\\test.xls"
            - worksheetNames: null
        publish:
          - excelFileName
        navigate:
          - failure: FAILURE
          - success: Add_Excel_Data
    - Add_Excel_Data:
        do_external:
          4552e495-4595-4916-b58b-ce521bdb1e9a:
            - excelFileName: '${excelFileName}'
            - worksheetName: Sheet1
            - headerData: null
            - rowData: 'columnName1,columnName2,columnName3, ABC, DE'
        navigate:
          - failure: FAILURE
          - success: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      New_Excel_Document:
        x: 92
        'y': 85
        navigate:
          ca55e49b-08be-dd02-5ceb-94b4f8735928:
            targetId: c6c77eba-fd27-34a4-1152-e98dd9f5d875
            port: failure
      Add_Excel_Data:
        x: 464
        'y': 85
        navigate:
          8440346a-36be-302f-bd39-b57a24fd2907:
            targetId: bffbf49f-52dd-3c8d-6e41-a606343980f5
            port: success
          723655c6-9576-5bb0-d66e-f30099c4a6bd:
            targetId: c6c77eba-fd27-34a4-1152-e98dd9f5d875
            port: failure
    results:
      FAILURE:
        c6c77eba-fd27-34a4-1152-e98dd9f5d875:
          x: 337.0138854980469
          'y': 272.0520935058594
      SUCCESS:
        bffbf49f-52dd-3c8d-6e41-a606343980f5:
          x: 675.0138549804688
          'y': 197.0520782470703
