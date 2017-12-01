const Backend = artifacts.require('Backend')
const SafeMath = artifacts.require('SafeMath')
module.exports = function(deployer) {
  // Use deployer to state migration tasks.
  // deployer.deploy(SafeMath)
  deployer.deploy(Backend)
  // deployer.link(SafeMath, Backend)
};
