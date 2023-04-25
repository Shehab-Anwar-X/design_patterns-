import 'i_url_retriever.dart';

class RealUrlRetriever implements IUrlRetriever {
  const RealUrlRetriever();

  @override
  Future<String> getPage({required String url}) async {
    await Future<void>.delayed(Duration(seconds: 1));
    return 'Data of $url';
  }
}
