void main() async {
  var angkaList = [1, 2, 3, 4];
  var angkaPengali = 10;

  List<int> hasil = await listData(angkaList, angkaPengali);
  print(hasil);
}

Future<List<int>> listData(List<int> list, int pengali) {
  return Future.delayed(Duration(seconds: 1), () {
    List<int> listPlace = [];
    for (int i = 0; i < list.length; i++) {
      listPlace.add(list[i] * pengali);
    }
    return listPlace;
  });
}