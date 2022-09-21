import 'package:flutter/material.dart';

class Chats {
  String avatarUrl, name, phone;

  Chats({
    required this.avatarUrl,
    required this.name,
    required this.phone,
  });
}

List dataChats = [
  Chats(
    avatarUrl: 'L',
    name: 'Leane Graham',
    phone: '0877 1789 0020',
  ),
  Chats(
    avatarUrl: 'E',
    name: 'Ervin Howell',
    phone: '0815 1243 5745',
  ),
  Chats(
    avatarUrl: 'C',
    name: 'Clementine Bauch',
    phone: '0895 1929 1457',
  ),
  Chats(
    avatarUrl: 'P',
    name: 'Patricia Lebsack',
    phone: '0822 1234 6789',
  ),
  Chats(
    avatarUrl: 'C',
    name: 'Chelsey Dietrich',
    phone: '0898 1515 2432',
  ),
  Chats(
    avatarUrl: 'M',
    name: 'Mrs. Dennis Schulist',
    phone: '0898 5454 5555',
  ),
  Chats(
    avatarUrl: 'K',
    name: 'Kurtis Weissnat',
    phone: '0878 9090 2321',
  ),
];
