import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../domain/wallet/wallet.dart';
import '../../../domain/wallet/wallet_failure.dart';

class BlockchainApi {
  static const _api = 'localhost:3000';

  static Future<Map<String, dynamic>> createWallet(Wallet wallet) async {
    final response = await http.post(Uri.http(_api, '/api/v2/create', {
      'api_code': wallet.apiCode,
      'password': wallet.password.getOrCrash(),
      'label': wallet.name!.getOrCrash()
    }));

    if (response.statusCode == 200) {
      var parsed = jsonDecode(response.body);
      return parsed;
    } else {
      throw WalletFailure.unexpected();
    }
  }
}
