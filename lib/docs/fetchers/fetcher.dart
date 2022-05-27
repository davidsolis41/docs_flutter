import 'package:http/http.dart' as http;
import 'dart:convert';

class ResFetch<T> {
  int status;
  T? data;
  ResFetch({this.status = 1000, this.data});
}

class _Fetcher {
  final Map<String, String> _headders = {"Content-Type": "application/json"};

  Future<ResFetch<T>> get<T>(Uri url, {Map<String, String>? headers}) async {
    final http.Response peticionGet =
        await http.get(url, headers: _getHeaders(_headders, headers));

    return _compStatus<T>(peticionGet);
  }

  Future<ResFetch<T>> post<T>(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final http.Response peticionPost = await http.post(url,
        headers: _getHeaders(_headders, headers),
        body: body,
        encoding: encoding);

    return _compStatus<T>(peticionPost);
  }

  Future<ResFetch<T>> put<T>(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final http.Response peticionPut = await http.put(url,
        headers: _getHeaders(_headders, headers),
        body: body,
        encoding: encoding);

    return _compStatus<T>(peticionPut);
  }

  Future<ResFetch<T>> delete<T>(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final http.Response peticionDelete = await http.delete(url,
        headers: _getHeaders(_headders, headers),
        body: body,
        encoding: encoding);

    return _compStatus<T>(peticionDelete);
  }

  Future<ResFetch<T>> patch<T>(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final http.Response peticionPatch = await http.patch(url,
        headers: _getHeaders(_headders, headers),
        body: body,
        encoding: encoding);

    return _compStatus<T>(peticionPatch);
  }

  Map<String, String> _getHeaders(
      Map<String, String> locals, Map<String, String>? user) {
    if (user != null && user.isNotEmpty) {
      final List<String> localHeaderkeys =
          locals.entries.map((p) => p.key).toList();
      final List<String> userHeaderKeys =
          user.entries.map((p) => p.key).toList();
      String keyBusqueda = '';

      for (var headUser in userHeaderKeys) {
        keyBusqueda = localHeaderkeys.firstWhere(
            (headLocal) =>
                headLocal.trim().toLowerCase() == headUser.trim().toLowerCase(),
            orElse: () => '');

        if (keyBusqueda.trim().isNotEmpty) locals.remove(keyBusqueda);
      }

      return {...locals, ...user};
    } else {
      return locals;
    }
  }

  ResFetch<T> _compStatus<T>(http.Response peticion) {
    final int status = peticion.statusCode;
    ResFetch resp;
    try {
      resp = ResFetch<Map>(status: status, data: jsonDecode(peticion.body));
    } catch (e) {
      try {
        resp = ResFetch<String>(status: status, data: peticion.body);
      } catch (error) {
        resp = ResFetch<String>(status: status, data: error.toString());
      }
    }
    return resp as dynamic;
  }
}

final Fetcher = _Fetcher();
