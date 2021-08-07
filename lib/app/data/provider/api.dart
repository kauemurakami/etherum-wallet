import 'package:get/get.dart';
import 'dart:math';
import 'package:web3dart/web3dart.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';
const addressAccount = '0x786b5b0048A404A4139929Fa60fC44b4dcC64c0f';

class MyApi extends GetConnect {
  Web3Client? eth;
}
