pragma solidity ^0.4.11;

contract Delegate {

  address public delegateContract;
  address[] public previousDelegates;

  uint256 public total;

  function Delegate() {
    // constructor
  }

  function add(uint256 var1, uint256 var2) {
    total = var1 + var2;
  }
}
