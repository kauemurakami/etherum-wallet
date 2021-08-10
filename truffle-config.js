module.exports = {
  networks:{
    development:{
      host:"192.168.1.7",
      port:7545,
      network_id:5777
    },
    advanced:{
      websockets : true,
    },
    
  },
  contracts_build_directory:"./assets/files/",
  compilers: {
    solc: {
      optimizer :{
        enabled: true,
        runs: 200
      }
    }
  }
}