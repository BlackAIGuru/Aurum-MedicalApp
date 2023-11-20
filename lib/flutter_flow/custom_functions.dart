import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String> questionList(String msg) {
  return msg
      .split('\n')
      .where((question) =>
          question.trim().isNotEmpty &&
          question.trim().startsWith(RegExp(r'\d')))
      .toList();
}

String? makestring(List<String> val) {
  return val.join(', ');
}

int countYes(String sentence) {
  return sentence.split(', ').where((word) => word == 'Yes').length;
}

int countNo(String sentence) {
  return sentence.split(', ').where((word) => word == 'No').length;
}

int countNotsure(String sentence) {
  return sentence.split(', ').where((word) => word == 'Not sure').length;
}

String getRadios(
  String answer,
  String radio,
) {
  return answer + "," + radio;
}
