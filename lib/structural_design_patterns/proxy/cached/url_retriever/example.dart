import 'real_url_retriever.dart';
import 'real_url_retriever_proxy.dart';

void main() async {
  final urlR = RealUrlRetrieverProxy(urlRetriever: RealUrlRetriever());
  await urlR.getPage(url: 'Shehab');
  await urlR.getPage(url: 'Shehab');
  await Future<void>.delayed(Duration(seconds: 3));
  await urlR.getPage(url: 'Shehab');
}
