namespace: Folder1
flow:
  name: Flow7
  inputs:
    - service
    - service_map: "{\n\t\"i1\": {\n\t\t\"hosts\": [\"1\"],\n\t\t\"minimum_required_hosts\": \"1\",\n\t\t\"cleanup_directories\": [\"1\"],\n\t\t\"installation_directory\": \"1\",\n\t\t\"windows_service\": \"1\",\n\t\t\"unique_monitoring_id\": \"1\",\n\t\t\"aliases_whitelist\": \"1\"\n\t},\n\t\"i2\": {\n\t\t\"hosts\": [\"2\"],\n\t\t\"minimum_required_hosts\": \"2\",\n\t\t\"cleanup_directories\": [\"2\"],\n\t\t\"installation_directory\": \"2\",\n\t\t\"windows_service\": \"2\",\n\t\t\"unique_monitoring_id\": \"2\",\n\t\t\"aliases_whitelist\": \"2\"\n\t},\n\t\"i3\": {\n\t\t\"hosts\": [\"3\"],\n\t\t\"minimum_required_hosts\": \"3\",\n\t\t\"cleanup_directories\": [\"3\"],\n\t\t\"installation_directory\": \"3\",\n\t\t\"windows_service\": \"3\",\n\t\t\"unique_monitoring_id\": \"3\",\n\t\t\"aliases_whitelist\": \"3\"\n\t},\n\t\"i4\": {\n\t\t\"hosts\": [\"4\"],\n\t\t\"minimum_required_hosts\": \"4\",\n\t\t\"cleanup_directories\": [\"4\"],\n\t\t\"installation_directory\": \"4\",\n\t\t\"windows_service\": \"4\",\n\t\t\"unique_monitoring_id\": \"4\",\n\t\t\"aliases_whitelist\": \"4\"\n\t},\n\t\"i5\": {\n\t\t\"hosts\": [\"5\"],\n\t\t\"minimum_required_hosts\": \"5\",\n\t\t\"cleanup_directories\": [\"5\"],\n\t\t\"installation_directory\": \"5\",\n\t\t\"windows_service\": \"5\",\n\t\t\"unique_monitoring_id\": \"5\",\n\t\t\"aliases_whitelist\": \"5\"\n\t},\n\t\"i6\": {\n\t\t\"hosts\": [\"6\"],\n\t\t\"minimum_required_hosts\": \"6\",\n\t\t\"cleanup_directories\": [\"6\"],\n\t\t\"installation_directory\": \"6\",\n\t\t\"windows_service\": \"6\",\n\t\t\"unique_monitoring_id\": \"6\",\n\t\t\"aliases_whitelist\": \"6\"\n\t},\n\t\"i7\": {\n\t\t\"hosts\": [\"7\"],\n\t\t\"minimum_required_hosts\": \"7\",\n\t\t\"cleanup_directories\": [\"7\"],\n\t\t\"installation_directory\": \"7\",\n\t\t\"windows_service\": \"7\",\n\t\t\"unique_monitoring_id\": \"7\",\n\t\t\"aliases_whitelist\": \"7\"\n\t},\n\t\"i8\": {\n\t\t\"hosts\": [\"8\"],\n\t\t\"minimum_required_hosts\": \"8\",\n\t\t\"cleanup_directories\": [\"8\"],\n\t\t\"installation_directory\": \"8\",\n\t\t\"windows_service\": \"8\",\n\t\t\"unique_monitoring_id\": \"8\",\n\t\t\"aliases_whitelist\": \"8\"\n\t},\n\t\"i9\": {\n\t\t\"hosts\": [\"9\"],\n\t\t\"minimum_required_hosts\": \"9\",\n\t\t\"cleanup_directories\": [\"9\"],\n\t\t\"installation_directory\": \"9\",\n\t\t\"windows_service\": \"9\",\n\t\t\"unique_monitoring_id\": \"9\",\n\t\t\"aliases_whitelist\": \"9\"\n\t},\n\t\"i10\": {\n\t\t\"hosts\": [\"10\"],\n\t\t\"minimum_required_hosts\": \"10\",\n\t\t\"cleanup_directories\": [\"10\"],\n\t\t\"installation_directory\": \"10\",\n\t\t\"windows_service\": \"10\",\n\t\t\"unique_monitoring_id\": \"10\",\n\t\t\"aliases_whitelist\": \"10\"\n\t}\n}"
  workflow:
    - query_service_attributes:
        do:
          si.offering.qualityassurance.internal.simultaneous_run.query_service_attributes:
            - service: "${'i' + service}"
            - service_map: '${service_map}'
        publish:
          - windows_service
          - hosts
          - minimum_required_hosts
          - cleanup_directories
          - installation_directory
          - unique_monitoring_id
          - aliases_whitelist
          - output_0: '${service}'
        navigate:
          - SUCCESS: is_true
          - FAILURE: on_failure
    - is_true:
        do:
          io.cloudslang.base.utils.is_true:
            - bool_value: '${str(int(service) * 7 == int(windows_service) + int(minimum_required_hosts) + int(hosts) + int(cleanup_directories) + int(installation_directory) + int(unique_monitoring_id) + int(aliases_whitelist))}'
        navigate:
          - 'TRUE': query_service_attributes_ex
          - 'FALSE': FAILURE_1
    - query_service_attributes_ex:
        do:
          si.offering.qualityassurance.internal.simultaneous_run.query_service_attributes_ex:
            - service: "${'i'+service}"
            - service_map: '${service_map}'
        publish:
          - windows_service
          - hosts
          - minimum_required_hosts
          - cleanup_directories
          - installation_directory
          - unique_monitoring_id
          - aliases_whitelist
        navigate:
          - SUCCESS: is_true_1
          - FAILURE: on_failure
    - is_true_1:
        do:
          io.cloudslang.base.utils.is_true:
            - bool_value: '${str(int(service) * 7 == int(windows_service) + int(minimum_required_hosts) + int(hosts) + int(cleanup_directories) + int(installation_directory) + int(unique_monitoring_id) + int(aliases_whitelist))}'
        navigate:
          - 'TRUE': do_nothing
          - 'FALSE': FAILURE_3
    - do_nothing:
        do:
          io.cloudslang.base.utils.do_nothing:
            - service: "${'i'+service}"
            - service_map: '${service_map}'
        publish:
          - windows_service: "${str(eval(cs_json_query(service_map,str(service) + '.windows_service'))[0]) if cs_json_query(service_map,str(service) + '.windows_service') != None else ''}"
          - minimum_required_hosts: "${str(eval(cs_json_query(service_map,service + '.minimum_required_hosts'))[0]) if cs_json_query(service_map,service + '.minimum_required_hosts') != None else ''}"
          - hosts: "${','.join(eval(cs_json_query(service_map,service + '.hosts'))[0]) if cs_json_query(service_map,service + '.hosts') != None else ''}"
          - cleanup_directories: "${''.join(eval(cs_json_query(service_map,service + '.cleanup_directories'))[0]) if cs_json_query(service_map,service + '.cleanup_directories') != None else ''}"
          - installation_directory: "${str(eval(cs_json_query(service_map,service + '.installation_directory'))[0]) if cs_json_query(service_map,service + '.installation_directory') != None else ''}"
          - unique_monitoring_id: "${str(eval(cs_json_query(service_map,service + '.unique_monitoring_id'))[0]) if cs_json_query(service_map,service + '.unique_monitoring_id') != None else ''}"
          - aliases_whitelist: |-
              ${str(eval(cs_json_query(service_map,service + '.aliases_whitelist'))[0]) if cs_json_query(service_map,service + '.aliases_whitelist') != None else ''
              #problem mit eval wenn element nicht vorhanden}
        navigate:
          - SUCCESS: is_true_2
          - FAILURE: on_failure
    - is_true_2:
        do:
          io.cloudslang.base.utils.is_true:
            - bool_value: '${str(int(service) * 7 == int(windows_service) + int(minimum_required_hosts) + int(hosts) + int(cleanup_directories) + int(installation_directory) + int(unique_monitoring_id) + int(aliases_whitelist))}'
        navigate:
          - 'TRUE': SUCCESS
          - 'FALSE': FAILURE_2
  outputs:
    - output_0: '${output_0}'
    - aliases_whitelist: '${aliases_whitelist}'
    - windows_service: '${windows_service}'
    - minimum_required_hosts: '${minimum_required_hosts}'
    - hosts: '${hosts}'
    - cleanup_directories: '${cleanup_directories}'
    - installation_directory: '${installation_directory}'
    - unique_monitoring_id: '${unique_monitoring_id}'
    - aliases_whitelist_1: '${aliases_whitelist}'
  results:
    - FAILURE
    - FAILURE_1
    - FAILURE_3
    - FAILURE_2
    - SUCCESS
extensions:
  graph:
    steps:
      query_service_attributes:
        x: 40
        'y': 200
      is_true:
        x: 160
        'y': 200
        navigate:
          9917e892-bf7f-aa0e-2bd8-124a518a4720:
            targetId: f81b1051-f892-85e8-c620-8ac27b79beea
            port: 'FALSE'
      query_service_attributes_ex:
        x: 320
        'y': 200
      is_true_1:
        x: 480
        'y': 200
        navigate:
          67994ce2-9116-f0dc-77df-46f67232cabe:
            targetId: 97c44c3d-ea98-23cc-274d-f1a1c8165d3f
            port: 'FALSE'
      do_nothing:
        x: 680
        'y': 160
      is_true_2:
        x: 880
        'y': 160
        navigate:
          bfaa92aa-331a-db36-82ff-be6045457c96:
            targetId: 3ce1c031-9c43-fc25-9ae2-86a1cd1f6c83
            port: 'FALSE'
          e0095f46-0f08-4b8f-040d-9252e0d2b66f:
            targetId: 61695eaa-dbe4-eaaf-2c99-6bb16f708736
            port: 'TRUE'
    results:
      FAILURE_1:
        f81b1051-f892-85e8-c620-8ac27b79beea:
          x: 160
          'y': 440
      FAILURE_3:
        97c44c3d-ea98-23cc-274d-f1a1c8165d3f:
          x: 480
          'y': 440
      FAILURE_2:
        3ce1c031-9c43-fc25-9ae2-86a1cd1f6c83:
          x: 880
          'y': 440
      SUCCESS:
        61695eaa-dbe4-eaaf-2c99-6bb16f708736:
          x: 1080
          'y': 160
