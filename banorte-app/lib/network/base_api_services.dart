
import 'package:banorte_app/models/transaction_model.dart';

abstract class BaseApiService {
  Future<dynamic> getApi(String url, dynamic data);
  Future getGetApiResponse(String url);
  Future<List<Transaction>> getAllTransactions();
}