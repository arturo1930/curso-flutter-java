
import 'dart:convert';

import 'package:banorte_app/models/transaction_model.dart';
import 'package:banorte_app/network/base_api_services.dart';
import 'package:banorte_app/providers/app_url.dart';
import 'package:http/http.dart' as http;


class TransactionApiService extends BaseApiService {
  
  final String baseUrl = 'http://localhost:8080/transactions';

  @override
  Future<List<Transaction>> getAllTransactions() async {
    final response = await http.get(Uri.parse(AppUrl.baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Transaction> transactions = body.map((dynamic item) => Transaction.fromJson(item)).toList();
      return transactions;
    } else {
      throw Exception('Failed to load transactions');
    }
  }

  Future<void> deleteTransaction(int id) async {
    final response = await http.delete(Uri.parse(baseUrl));

    if (response.statusCode != 200) {
      throw Exception('Failed to delete transaction');
    }
  }
  
  @override
  Future getApi(String url, data) {
    // TODO: implement getApi
    throw UnimplementedError();
  }
  
  @override
  Future getGetApiResponse(String url) {
    // TODO: implement getGetApiResponse
    throw UnimplementedError();
  }


}