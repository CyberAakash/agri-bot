import 'package:agri_easy/model/models_model.dart';
import 'package:agri_easy/services/api_service.dart';
import 'package:flutter/cupertino.dart';

class ModelsProvider with ChangeNotifier {
  String currentModel = "davinci-002";

  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];
  List<ModelsModel> get getModelsList {
    return modelsList;
  }

  Future<List<ModelsModel>> getAllModels() async {
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}
