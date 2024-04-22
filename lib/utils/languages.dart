import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "message": "What is your name?",
          "name": "My Name is Mehedi Hasan.",
        },
        "bn_BD": {
          "message": "আপনার নাম কি?",
          "name": "আমার নাম মেহেদী হাসান।",
        },
      };
}
