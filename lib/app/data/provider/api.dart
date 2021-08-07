import 'dart:io';
import 'package:etherum_wallet/core/values/keys.dart';
import 'package:flutter/services.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

class MyApi {
  final Web3Client eth = Web3Client(baseUrl, Client());
  loadContract() async {
    String abi = await rootBundle.loadString('assets/files/abi.json');
    final contract = DeployedContract(ContractAbi.fromJson(abi, kcoin),
        EthereumAddress.fromHex(contractAddressRemix));
    return contract;
  }

  query(String functionName, List<dynamic> args) async {
    final contract = await this.loadContract();
    final ethFunction = contract.function(
      functionName,
    );
    final result =
        await eth.call(contract: contract, function: ethFunction, params: args);
    return result;
  }

  getBalance(String address) async {
    EthereumAddress targetAdress = EthereumAddress.fromHex(address);
    var result = await this.query('getBalance', []);
    var data = result[0];
    await eth.dispose();
    return data;
  }

  submit(String functionName, List<dynamic> args) async {
    var credentials = await eth.credentialsFromPrivateKey(privateKeyMetaMask);
    DeployedContract contract = await loadContract();
    final ethFunction = contract.function(functionName);
    final result = await eth.sendTransaction(
      credentials,
      Transaction.callContract(
        contract: contract,
        function: ethFunction,
        parameters: args,
        from: EthereumAddress.fromHex(addressAccount),
        gasPrice: EtherAmount.inWei(BigInt.one),
        maxGas: 100000,
        value: EtherAmount.fromUnitAndValue(EtherUnit.ether, 1),
      ),
    );
    return result;
  }

  withdraw(address, args) async {
    var bigAmount = BigInt.from(args);
    var response = await submit("wuthdrawBalance", [bigAmount]);
    print("Resgatado");
    return response;
  }

  deposit(address, args) async {
    var bigAmount = BigInt.from(args);
    var response = await submit("depositBalance", [bigAmount]);
    print("Depositado");

    return response;
  }
}
