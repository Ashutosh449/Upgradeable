pragma solidity ^0.4.11;

// This is the contract that will be unchangeable once deployed. It will call delegate functions in another contract to change state. The delegate contract is upgradable.

contract Backend {

  address public delegateContract;
  address[] public previousDelegates;

  uint256 public total;


  event DelegateChanged(address oldAddress, address newAddress);

  function Backend() {
    // constructor
  }

  function changeDelegate(address _newDelegate) returns (bool) {

    if (_newDelegate != delegateContract) {

          previousDelegates.push(delegateContract);
          var oldDelegate = delegateContract;
          delegateContract = _newDelegate;
          DelegateChanged(oldDelegate, _newDelegate);
          return true;
      }
      return false;

  }

  function delegateAdd(uint256 var1, uint256 var2) {
    delegateContract.delegatecall(bytes4(sha3("add(uint256,uint256)")), var1, var2);
  }

  function callAdd(uint256 var1, uint256 var2) {
    delegateContract.call(bytes4(sha3("add(uint256,uint256)")), var1, var2);
  }

}
