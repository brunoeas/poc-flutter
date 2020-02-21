import 'dart:async';

import 'package:http/http.dart' as http;

// Hardcoded mesmo pq é uma POC ¯\_(ツ)_/¯
final String githubApiUrl = 'https://api.github.com';
final String githubApiToken = 'd89dad721e14736625e05e8209ccf00f13f470c3';
final Object headers = {
  'Authorization': githubApiToken,
  'Content-Type': 'application/json',
};

///
/// Classe que controla a comunicação com a API do Github
///
/// [author: Bruno Eduardo]
///
class GithubAPI {
  ///
  /// Retorna 30 Usuários antes do ID passado por parâmetro
  ///
  Future<http.Response> findAllUsuarios([int lastId = 30]) async {
    return await http.get("$githubApiUrl/users?since=$lastId",
        headers: headers);
  }
}
