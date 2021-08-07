# etherum_wallet

```yaml 
dependencies:
  flutter:
    sdk: flutter
  get:
  web3dart: ^2.1.4
  velocity_x:
  http:
```

1 - Instalar MetaMask, extensão, no chrome.
2 - Alterar modos para "testes Rinkeby"
3 - Criar funções do abi no Remix
```dart
    pragma solidity 0.6.6;

    contract KCoin{
        int balance;
        constructor() public {
            balance = 0;
        }
        
        function getBalance() view public returns(int){
            return balance;
        }
        function depositBalance(int amt)  public {
            balance = balance + amt;
        }
        function wuthdrawBalance(int amt) public {
            balance = balance - amt;
        }
    }
```
4 - Buildar seu código no remix
5 - Deploy do seu contrato pelo remix
6 - Fazer o download para o assets do seu abi.json  (voce encontrará o abi para download proximo ao botão de deploy)

### Inspirado em
https://www.youtube.com/watch?v=3Eeh3pJ6PeA
A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
