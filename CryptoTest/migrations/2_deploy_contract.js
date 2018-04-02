var rps = artifacts.require("./rockpaperscissor.sol");
module.exports = function(deployer) {
    deployer.deploy(Users);
};