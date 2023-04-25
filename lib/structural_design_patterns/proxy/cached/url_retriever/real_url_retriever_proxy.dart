import 'i_url_retriever.dart';

class RealUrlRetrieverProxy implements IUrlRetriever {
  final IUrlRetriever _urlRetriever;

  RealUrlRetrieverProxy({required IUrlRetriever urlRetriever})
      : assert(urlRetriever is! RealUrlRetrieverProxy),
        _urlRetriever = urlRetriever;

  final _urlDataCache = <String, String>{};
  final _urlTimeCache = <String, DateTime>{};

  DateTime get _now => DateTime.now();

  @override
  Future<String> getPage({required String url}) async {
    if (_urlDataCache.containsKey(url) && _urlTimeCache.containsKey(url)) {
      if (_now.difference(_urlTimeCache[url]!).inSeconds < 2) {
        print('Fetch Cached data');
        return _urlDataCache[url]!;
      } else {
        print('Expired Cached data');
        final data = await _urlRetriever.getPage(url: url);
        _urlDataCache[url] = data;
        _urlTimeCache[url] = _now;
        return data;
      }
    } else {
      print('Fetch from base object');
      final data = await _urlRetriever.getPage(url: url);
      _urlDataCache[url] = data;
      _urlTimeCache[url] = _now;
      return data;
    }
  }
}
