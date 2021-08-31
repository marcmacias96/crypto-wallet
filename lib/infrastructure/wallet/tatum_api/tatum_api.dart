import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../domain/wallet/wallet.dart';
import '../../../domain/wallet/wallet_failure.dart';

class TatumApi {
  static const _api = 'api-eu1.tatum.io';

  static Future<Map<String, dynamic>> createWallet(String mnemonic) async {
    final response = await http.get(
        Uri.https(_api, '/v3/bitcoin/wallet', {
          'mnemonic': mnemonic,
        }),
        headers: {
          'x-api-key': dotenv.env['API_CODE']!,
        });

    if (response.statusCode == 200) {
      var parsed = jsonDecode(response.body);
      return parsed;
    } else {
      throw WalletFailure.unexpected();
    }
  }

  static Future<Map<String, dynamic>> createAddress(Wallet wallet) async {
    final response = await http.get(
        Uri.https(_api, '/v3/bitcoin/address/${wallet.walletId}/0'),
        headers: {
          'x-api-key': dotenv.env['API_CODE']!,
        });

    if (response.statusCode == 200) {
      var parsed = jsonDecode(response.body);
      return parsed;
    } else {
      throw WalletFailure.unexpected();
    }
  }

  static Future<Map<String, dynamic>> getBalance(String address) async {
    final response = await http
        .get(Uri.https(_api, '/v3/bitcoin/address/balance/$address'), headers: {
      'x-api-key': dotenv.env['API_CODE']!,
    });

    if (response.statusCode == 200) {
      var parsed = jsonDecode(response.body);
      return parsed;
    } else {
      throw WalletFailure.unexpected();
    }
  }
}
