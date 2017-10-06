const Delegate = artifacts.require('Delegate')

module.exports = function(deployer) {
  // Use deployer to state migration tasks.
  deployer.deploy(Delegate)
};
