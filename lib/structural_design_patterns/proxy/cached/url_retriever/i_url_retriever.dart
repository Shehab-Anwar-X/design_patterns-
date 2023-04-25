abstract class IUrlRetriever {
  const IUrlRetriever._();

  Future<String> getPage({required String url});
}
