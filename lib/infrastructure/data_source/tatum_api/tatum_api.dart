import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../../../domain/transaction/transaction_failure.dart';
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

  static Future<Map<String, dynamic>> createPrivateKey(String mnemonic) async {
    final response = await http.post(Uri.https(_api, '/v3/bitcoin/wallet/priv'),
        headers: {
          'x-api-key': dotenv.env['API_CODE']!,
          "content-type": 'application/json'
        },
        body: json.encode({
          'index': 1,
          'mnemonic': mnemonic,
        }));

    if (response.statusCode == 200) {
      var parsed = jsonDecode(response.body);
      return parsed;
    } else {
      throw WalletFailure.unexpected();
    }
  }

  static Future<List<Map<String, dynamic>>> getTransactions(
      String address) async {
    try {
      final response = await http.get(
          Uri.https(_api, '/v3/bitcoin/transaction/address/$address', {
            'pageSize': '10',
          }),
          headers: {'x-api-key': dotenv.env['API_CODE']!});

      if (response.statusCode == 200) {
        return jsonDecode(response.body).cast<Map<String, dynamic>>();
      } else {
        throw TransactionFailure.unexpected();
      }
    } on Exception catch (_) {
      throw TransactionFailure.unexpected();
    }
  }

  static Future<Unit> sendBitcoin(
    String to,
    String from,
    double value,
    String privateKey,
  ) async {
    try {
      final response = await http.post(
        Uri.https(_api, '/v3/bitcoin/transaction'),
        headers: {
          'x-api-key': dotenv.env['API_CODE']!,
          "content-type": 'application/json'
        },
        body: json.encode({
          "fromAddress": [
            {
              "address": from,
              "privateKey": privateKey,
            }
          ],
          "to": [
            {
              "address": to,
              "value": value,
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        return unit;
      } else {
        throw TransactionFailure.unexpected();
      }
    } on Exception catch (_) {
      throw TransactionFailure.unexpected();
    }
  }
}
