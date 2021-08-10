# etherum_wallet
constructing...
```yaml 
dependencies:
  flutter:
    sdk: flutter
  get:
  web3dart: ^2.1.4
  web_socket_channel:
  velocity_x:
  http:
```

1 - Instalar Ganache.  
2 - Criar funções do abi no Remix 
```dart
    pragma solidity ^0.5.0;

contract TodoList{
    uint public taskCount;
    
    struct Task{
        string taskName;
        bool isComplet;
    }
    mapping(uint => Task) public todos;
    
    event TaskCreated(string task, uint taskNumber);
    
    constructor() public {
        taskCount = 0;
    }
    
    function createTask(string memory _taskName) public {
        //add task mapping and imcrement taskCount
        todos[taskCount++] = Task(_taskName, false);
        //emit event
        emit TaskCreated(_taskName, taskCount - 1);
    }
    
}
```  
3 - npm install -g truffle  e
dentro da pasta do projeto $truffle init  
3.1 - Na pasta contracts criada após o comando anterios colar criar um arquivo TodoList.sol e colar sua classe do Remix la assim como no passo 2  
4 - Buildar seu código no remix  
5 - Deploy do seu contrato pelo remix  
6 - em seu truffle-config.js  
```js
module.exports = {
  networks:{
    development:{
      host:"<seu-ip-no-ganache>",
      port: port-ganache,
      network_id:"*"
    },
    advanced:{
      websockets : true,
    },
    
  },
  contracts_build_directory:"./assets/files/",//diretorio onde ficarao os arquivos abi *.json
  compilers: {
    solc: {
      optimizer :{
        enabled: true,
        runs: 200
      }
    }
  }
}
```  
7 - Criar arquivo na pasta migrations gerada pelo truffle init com o seguinte conteudo
```js
const TodoList = artifacts.require("TodoList");

module.exports = function (deployer) {
  deployer.deploy(TodoList);
};
```  
8 - Rode $ truffle migrate 

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
