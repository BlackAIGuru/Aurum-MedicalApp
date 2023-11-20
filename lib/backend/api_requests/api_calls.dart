import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static MakeQuestionsCall makeQuestionsCall = MakeQuestionsCall();
  static MakeReportCall makeReportCall = MakeReportCall();
}

class MakeQuestionsCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    String? selected = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "user",
      "content": "Can you ask the user 30 questions to find out if he has problem with ${selected}? only make 30 questions, only provides questions."
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Make questions',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic questions(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

class MakeReportCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    int? yes,
    int? no,
    int? not,
    String? selected = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "user",
      "content": "If user answer yes for ${yes} questions, no for ${no} questions and not sure for ${not} questions out of 30 questions with ${selected}, does this means user has ${selected}, make sentences long as a doctor."
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Make report',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic report(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

/// End OpenAI ChatGPT Group Code

class LoginCall {
  static Future<ApiCallResponse> call({
    String? userid = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${userid}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://aurumclinic.co.uk/api/login_api/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic clinicusername(dynamic response) => getJsonField(
        response,
        r'''$.user_details.username''',
      );
  static dynamic clinicemail(dynamic response) => getJsonField(
        response,
        r'''$.user_details.email''',
      );
}

class ClinicDataCall {
  static Future<ApiCallResponse> call({
    String? clinicName = '',
    String? patientName = '',
    String? treatmentName = '',
    bool? recommendation,
    bool? benefits,
    int? pointResult,
  }) async {
    final ffApiRequestBody = '''
{
  "clinic_name": "${clinicName}",
  "patient_name": "${patientName}",
  "treatment_name": "${treatmentName}",
  "recommendation": "${recommendation}",
  "benefits": "${benefits}",
  "point_result": ${pointResult}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ClinicData',
      apiUrl: 'https://aurumclinic.co.uk/api/save-clinic-data/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic clinicname(dynamic response) => getJsonField(
        response,
        r'''$.data.clinic_name''',
      );
}

class PatientDataCall {
  static Future<ApiCallResponse> call({
    String? pname = '',
    String? pid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${pname}",
  "pid": "${pid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PatientData',
      apiUrl: 'https://aurumclinic.co.uk/api/patient_list/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic pname(dynamic response) => getJsonField(
        response,
        r'''$.pname''',
      );
  static dynamic pemail(dynamic response) => getJsonField(
        response,
        r'''$.pemail''',
      );
  static dynamic pid(dynamic response) => getJsonField(
        response,
        r'''$.punique_number''',
      );
  static dynamic pusername(dynamic response) => getJsonField(
        response,
        r'''$.pusername''',
      );
  static dynamic pdob(dynamic response) => getJsonField(
        response,
        r'''$.pdob''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
