
import 'dart:io';

void main() {
  List<List> studentDate = [
    ['NIM', 'Nama', 'Nilai'],
  ];

  List<List> studentList = [
    ['1001', 'Agus Koswara', '90'],
    ['1002', 'Bagyo Suhendar', '80'],
    ['1003', 'Cahya Pambudi', '70']
  ];

  Map<String, String> studentMap = {};

  var counter = studentList[0];
  
  for (var i = 0; i < counter.length; i++) {
    studentMap[studentDate[0][i]] = studentList[0][i];
  }
  print(studentMap);
}