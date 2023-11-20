import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _selectionRadio = [
    'Anxiety & Restlessness',
    'Nutritional Assimilation Support -F- ENE104',
    'Vital Energy Unblocking'
  ];
  List<String> get selectionRadio => _selectionRadio;
  set selectionRadio(List<String> _value) {
    _selectionRadio = _value;
  }

  void addToSelectionRadio(String _value) {
    _selectionRadio.add(_value);
  }

  void removeFromSelectionRadio(String _value) {
    _selectionRadio.remove(_value);
  }

  void removeAtIndexFromSelectionRadio(int _index) {
    _selectionRadio.removeAt(_index);
  }

  void updateSelectionRadioAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _selectionRadio[_index] = updateFn(_selectionRadio[_index]);
  }

  void insertAtIndexInSelectionRadio(int _index, String _value) {
    _selectionRadio.insert(_index, _value);
  }

  String _selected = '';
  String get selected => _selected;
  set selected(String _value) {
    _selected = _value;
  }

  String _apikey = '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';
  String get apikey => _apikey;
  set apikey(String _value) {
    _apikey = _value;
  }

  int _score = 0;
  int get score => _score;
  set score(int _value) {
    _score = _value;
  }

  List<ScoreStruct> _Ques = [
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"1\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"2\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"3\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"4\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"5\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"6\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"7\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"8\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"9\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"10\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"11\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"12\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"13\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"14\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"15\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"16\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"17\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"18\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"19\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"20\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"21\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"22\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"23\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"24\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"25\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"26\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"27\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"28\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"29\",\"idxscore\":\"0\",\"flag\":\"false\"}')),
    ScoreStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"30\",\"idxscore\":\"0\",\"flag\":\"false\"}'))
  ];
  List<ScoreStruct> get Ques => _Ques;
  set Ques(List<ScoreStruct> _value) {
    _Ques = _value;
  }

  void addToQues(ScoreStruct _value) {
    _Ques.add(_value);
  }

  void removeFromQues(ScoreStruct _value) {
    _Ques.remove(_value);
  }

  void removeAtIndexFromQues(int _index) {
    _Ques.removeAt(_index);
  }

  void updateQuesAtIndex(
    int _index,
    ScoreStruct Function(ScoreStruct) updateFn,
  ) {
    _Ques[_index] = updateFn(_Ques[_index]);
  }

  void insertAtIndexInQues(int _index, ScoreStruct _value) {
    _Ques.insert(_index, _value);
  }

  dynamic _quesTion;
  dynamic get quesTion => _quesTion;
  set quesTion(dynamic _value) {
    _quesTion = _value;
  }

  dynamic _ques2 = jsonDecode(
      '{\"survey_title\":\"Nutritional Assimilation Support -F- ENE104\",\"sections\":[{\"section_title\":\"Background\",\"questions\":[{\"idx\":1,\"question\":\"What is the patient’s age?\",\"choices\":[{\"option\":\"18-35\",\"points\":1},{\"option\":\"36-55\",\"points\":2},{\"option\":\"56-70\",\"points\":3},{\"option\":\"Over 70\",\"points\":4}]},{\"idx\":2,\"question\":\"What is the patient’s gender?\",\"choices\":[{\"option\":\"Male\",\"points\":1},{\"option\":\"Female\",\"points\":2},{\"option\":\"Non-binary\",\"points\":1}]}]},{\"section_title\":\"Nutritional Deficiencies\",\"questions\":[{\"idx\":3,\"question\":\"Does the patient have any nutritional deficiencies?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":4,\"question\":\"Does the patient struggle with low energy or fatigue?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Poor Assimilation\",\"questions\":[{\"idx\":5,\"question\":\"Does the patient have signs of poor nutritional assimilation?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":6,\"question\":\"Does the patient have multiple food sensitivities?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Digestive Issues\",\"questions\":[{\"idx\":7,\"question\":\"Does the patient have a digestive disorder like IBS, Crohn’s, etc.?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":8,\"question\":\"Does the patient experience bloating, cramping, or poor stool quality?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Inflammation\",\"questions\":[{\"idx\":9,\"question\":\"Does the patient have chronic inflammation or autoimmunity?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Immune Dysfunction\",\"questions\":[{\"idx\":10,\"question\":\"Does the patient experience recurrent infections?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Holistic Interest\",\"questions\":[{\"idx\":11,\"question\":\"Is the patient open to holistic approaches?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Nutritional Therapy\",\"questions\":[{\"idx\":12,\"question\":\"Has the patient tried nutritional therapy without benefit?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Cellular Rejuvenation\",\"questions\":[{\"idx\":13,\"question\":\"Is the patient seeking enhanced cellular rejuvenation?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Emotional Imbalances\",\"questions\":[{\"idx\":14,\"question\":\"Does the patient have mood issues like anxiety or depression?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Neurological Symptoms\",\"questions\":[{\"idx\":15,\"question\":\"Does the patient have neurological symptoms?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Adrenal Fatigue\",\"questions\":[{\"idx\":16,\"question\":\"Does the patient have adrenal exhaustion?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Chemical Sensitivities\",\"questions\":[{\"idx\":17,\"question\":\"Does the patient have chemical or environmental sensitivities?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Chakra Imbalances\",\"questions\":[{\"idx\":18,\"question\":\"Does the patient have any chakra imbalances?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Trauma History\",\"questions\":[{\"idx\":19,\"question\":\"Does the patient have past emotional trauma?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Parasitic Infections\",\"questions\":[{\"idx\":20,\"question\":\"Does the patient have parasitic infections?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Seeking Wellness\",\"questions\":[{\"idx\":21,\"question\":\"Is the patient highly motivated to improve their health?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Stress Load\",\"questions\":[{\"idx\":22,\"question\":\"Does the patient have a high-stress load?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Lifestyle Factors\",\"questions\":[{\"idx\":23,\"question\":\"Is the patient willing to make lifestyle changes?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Holistic Preferences\",\"questions\":[{\"idx\":24,\"question\":\"Does the patient prefer holistic therapies?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Energetic Focus\",\"questions\":[{\"idx\":25,\"question\":\"Is the patient looking for an energetic healing approach?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Toxicity\",\"questions\":[{\"idx\":26,\"question\":\"Has the patient been exposed to high levels of toxins?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Nutritional Outlook\",\"questions\":[{\"idx\":27,\"question\":\"Does the patient prioritize nutritional well-being?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Body Awareness\",\"questions\":[{\"idx\":28,\"question\":\"Does the patient have high body awareness?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Nutritional Knowledge\",\"questions\":[{\"idx\":29,\"question\":\"Does the patient have basic nutritional knowledge?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Healing Journey\",\"questions\":[{\"idx\":30,\"question\":\"Is the patient committed to their healing journey?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]}]}');
  dynamic get ques2 => _ques2;
  set ques2(dynamic _value) {
    _ques2 = _value;
  }

  dynamic _ques1 = jsonDecode(
      '{\"survey_title\":\"Aurum Bioelectromagnetic Therapy Screening for Stress & Anxiety\",\"sections\":[{\"section_title\":\"Background\",\"questions\":[{\"idx\":1,\"question\":\"What is the patient’s age?\",\"choices\":[{\"option\":\"18-35\",\"points\":1},{\"option\":\"36-55\",\"points\":2},{\"option\":\"56-70\",\"points\":3},{\"option\":\"Over 70\",\"points\":4}]},{\"idx\":2,\"question\":\"What is the patient’s gender?\",\"choices\":[{\"option\":\"Male\",\"points\":1},{\"option\":\"Female\",\"points\":2},{\"option\":\"Non-binary\",\"points\":1}]}]},{\"section_title\":\"Stress Levels\",\"questions\":[{\"idx\":3,\"question\":\"Does the patient experience chronic stress or feel stressed daily?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":4,\"question\":\"Does stress negatively impact the patient’s work, relationships, or health?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Anxiety Symptoms\",\"questions\":[{\"idx\":5,\"question\":\"Does the patient have excessive worry, dread, panic attacks, or phobias?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":6,\"question\":\"Is the patient experiencing anxiety that interferes with daily life?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":7,\"question\":\"Does the patient avoid situations or isolate due to anxiety?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Trauma Factors\",\"questions\":[{\"idx\":8,\"question\":\"Does the patient have a trauma history or PTSD symptoms?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":9,\"question\":\"Does the patient have unresolved grief or traumatic loss?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Depressive Symptoms\",\"questions\":[{\"idx\":10,\"question\":\"Does the patient have clinical depression?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":11,\"question\":\"Does the patient struggle with low mood, loss of interest, or loneliness?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Holistic Interest\",\"questions\":[{\"idx\":12,\"question\":\"Is the patient open to mind-body and energy healing modalities?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Motivation\",\"questions\":[{\"idx\":13,\"question\":\"Is the patient motivated and ready to reduce anxiety and stress?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Lifestyle Factors\",\"questions\":[{\"idx\":14,\"question\":\"Is the patient willing to make lifestyle changes to manage stress?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":15,\"question\":\"Does the patient use unhealthy coping mechanisms like drugs, alcohol, or overeating?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Commitment\",\"questions\":[{\"idx\":16,\"question\":\"Will the patient commit to the entire course of therapy sessions?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Self-Efficacy\",\"questions\":[{\"idx\":17,\"question\":\"Does the patient believe their mental health can improve with treatment?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Additional Symptoms\",\"questions\":[{\"idx\":18,\"question\":\"Does the patient have other physical symptoms like headaches, fatigue, or muscle tension?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":19,\"question\":\"Does the patient have sleep disturbances like insomnia or restless sleep?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Support System\",\"questions\":[{\"idx\":20,\"question\":\"Does the patient have good social support and relationships?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Nutrition\",\"questions\":[{\"idx\":21,\"question\":\"Is the patient willing to make dietary changes if recommended?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Self-Care\",\"questions\":[{\"idx\":22,\"question\":\"Does the patient actively manage stress through healthy routines?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Counselling\",\"questions\":[{\"idx\":23,\"question\":\"Is the patient open to counselling or group therapy support?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Progress Tracking\",\"questions\":[{\"idx\":24,\"question\":\"Will the patient track progress and symptoms between sessions?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Mindfulness\",\"questions\":[{\"idx\":25,\"question\":\"Does the patient have experience with meditation or mindfulness?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Medications\",\"questions\":[{\"idx\":26,\"question\":\"Is the patient looking to reduce anxiety medications?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Nature\",\"questions\":[{\"idx\":27,\"question\":\"Does being in nature help the patient feel calmer?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Exercise\",\"questions\":[{\"idx\":28,\"question\":\"Does the patient use exercise to manage their stress?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Relaxation\",\"questions\":[{\"idx\":29,\"question\":\"Does the patient practice relaxation techniques like deep breathing, yoga, and massage?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Creativity\",\"questions\":[{\"idx\":30,\"question\":\"Does the patient use creative outlets like art, music, or writing?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]}]}');
  dynamic get ques1 => _ques1;
  set ques1(dynamic _value) {
    _ques1 = _value;
  }

  dynamic _ques3 = jsonDecode(
      '{\"survey_title\":\"Vital Energy Unblocking\",\"sections\":[{\"section_title\":\"Background Information\",\"questions\":[{\"idx\":1,\"question\":\"What is the patient\'s age?\",\"choices\":[{\"option\":\"18-30\",\"points\":1},{\"option\":\"31-50\",\"points\":2},{\"option\":\"51-65\",\"points\":3},{\"option\":\"Over 65\",\"points\":4}]},{\"idx\":2,\"question\":\"What is the patient\'s gender?\",\"choices\":[{\"option\":\"Male\",\"points\":1},{\"option\":\"Female\",\"points\":2}]}]},{\"section_title\":\"Pain Symptoms\",\"questions\":[{\"idx\":3,\"question\":\"Does the patient have chronic back pain?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":4,\"question\":\"Does the patient have chronic joint pain or arthritis?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":5,\"question\":\"Does the patient suffer from frequent headaches or migraines?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":6,\"question\":\"Does the patient have any nerve pain or neuropathy?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Inflammatory Conditions\",\"questions\":[{\"idx\":7,\"question\":\"Has the patient been diagnosed with an autoimmune disease?\",\"choices\":[{\"option\":\"Yes\",\"points\":3},{\"option\":\"No\",\"points\":0}]},{\"idx\":8,\"question\":\"Does the patient have irritable bowel disease?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":9,\"question\":\"Does the patient have multiple chemical sensitivities?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Emotional Imbalances\",\"questions\":[{\"idx\":10,\"question\":\"Does the patient experience chronic anxiety?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":11,\"question\":\"Has the patient been diagnosed with clinical depression?\",\"choices\":[{\"option\":\"Yes\",\"points\":3},{\"option\":\"No\",\"points\":0}]},{\"idx\":12,\"question\":\"Does the patient have unresolved grief or traumatic loss?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Stress Disorders\",\"questions\":[{\"idx\":13,\"question\":\"Does the patient suffer from adrenal fatigue or exhaustion?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":14,\"question\":\"Is the patient struggling with burnout or overwhelmed?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":15,\"question\":\"Does the patient have insomnia or sleep difficulties?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Pain Management\",\"questions\":[{\"idx\":16,\"question\":\"Has the patient tried multiple interventions for pain without relief?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]},{\"idx\":17,\"question\":\"Is the patient looking to avoid or reduce pain medications?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Holistic Interest\",\"questions\":[{\"idx\":18,\"question\":\"Is the patient open to integrative and holistic therapies?\",\"choices\":[{\"option\":\"Very open\",\"points\":2},{\"option\":\"Somewhat open\",\"points\":1},{\"option\":\"Not open\",\"points\":0}]},{\"idx\":19,\"question\":\"Is the patient looking for therapies without side effects?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Neuromuscular Disorders\",\"questions\":[{\"idx\":20,\"question\":\"Has the patient been diagnosed with multiple sclerosis?\",\"choices\":[{\"option\":\"Yes\",\"points\":3},{\"option\":\"No\",\"points\":0}]},{\"idx\":21,\"question\":\"Does the patient have Parkinson\'s disease?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Digestive Conditions\",\"questions\":[{\"idx\":22,\"question\":\"Does the patient have leaky gut syndrome?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":23,\"question\":\"Has the patient been diagnosed with Crohn\'s disease?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Respiratory Conditions\",\"questions\":[{\"idx\":24,\"question\":\"Does the patient have asthma?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":25,\"question\":\"Does the patient suffer from chronic allergies?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Cardiovascular Issues\",\"questions\":[{\"idx\":26,\"question\":\"Has the patient been diagnosed with hypertension?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":27,\"question\":\"Does the patient have congestive heart failure?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Cancer\",\"questions\":[{\"idx\":28,\"question\":\"Does the patient have cancer or is receiving cancer treatments?\",\"choices\":[{\"option\":\"Yes\",\"points\":2},{\"option\":\"No\",\"points\":0}]}]},{\"section_title\":\"Skin Conditions\",\"questions\":[{\"idx\":29,\"question\":\"Does the patient have eczema or psoriasis?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]},{\"idx\":30,\"question\":\"Does the patient suffer from chronic acne?\",\"choices\":[{\"option\":\"Yes\",\"points\":1},{\"option\":\"No\",\"points\":0}]}]}]}');
  dynamic get ques3 => _ques3;
  set ques3(dynamic _value) {
    _ques3 = _value;
  }

  bool _dateshow = false;
  bool get dateshow => _dateshow;
  set dateshow(bool _value) {
    _dateshow = _value;
  }

  List<ScoreStruct> _Sum = [];
  List<ScoreStruct> get Sum => _Sum;
  set Sum(List<ScoreStruct> _value) {
    _Sum = _value;
  }

  void addToSum(ScoreStruct _value) {
    _Sum.add(_value);
  }

  void removeFromSum(ScoreStruct _value) {
    _Sum.remove(_value);
  }

  void removeAtIndexFromSum(int _index) {
    _Sum.removeAt(_index);
  }

  void updateSumAtIndex(
    int _index,
    ScoreStruct Function(ScoreStruct) updateFn,
  ) {
    _Sum[_index] = updateFn(_Sum[_index]);
  }

  void insertAtIndexInSum(int _index, ScoreStruct _value) {
    _Sum.insert(_index, _value);
  }

  String _pname = '';
  String get pname => _pname;
  set pname(String _value) {
    _pname = _value;
  }

  String _pid = '';
  String get pid => _pid;
  set pid(String _value) {
    _pid = _value;
  }

  String _clinicid = '';
  String get clinicid => _clinicid;
  set clinicid(String _value) {
    _clinicid = _value;
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
