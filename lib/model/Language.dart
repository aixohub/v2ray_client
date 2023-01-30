class LanguageModel {
  int id;
  String code;
  String name;

  LanguageModel({required this.id, required this.code, required this.name});
}

List<LanguageModel> languageList = [
  LanguageModel(id: 1, code: "zh", name: "简体中文"),
  LanguageModel(id: 2, code: "en", name: "English"),
];
