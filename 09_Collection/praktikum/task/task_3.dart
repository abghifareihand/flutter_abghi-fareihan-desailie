void main(List<String> args) {
  if(args.length == 3) {
    final arg1 = double.parse(args[0]);
    final arg2 = double.parse(args[2]);
    if(args[1]=='+') {
      print('${arg1+arg2}');
    } else if (args[1]=='-') {
      print('${arg1-arg2}');
    } else if (args[1]=='x') {
      print('${arg1*arg2}');
    } else if (args[1]=='/') {
      print('${arg1/arg2}');
    }
  } else {
    print('Perintah yang dijalankan tidak sesuai');
  }
}