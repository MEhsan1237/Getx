import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Languages extends Translations {

  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>
      {
        'en_US': {
          'name': 'My Name is Ali',
          'age': 'my age is 19',

        },
        'ur_PK': {
          'name': 'میرا نام علی ہے۔',
          'age': 'میری عمر 19 سال ہے۔',

        },
      };



}