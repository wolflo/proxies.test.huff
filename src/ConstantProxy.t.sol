pragma solidity ^0.5.10;

import "ds-test/test.sol";

import "./Logic.sol";
import "./Factory.sol";
import "./HuffProxies.sol";

contract ConstantProxyTest is DSTest, HuffProxies {
    address internal logic;
    address internal huff;
    address internal sol;

    function setUp() public {
        logic = address(new Logic());
        huff = Factory.deploy(huffConstProxyBC.init);
    }

    function testDeployment() public {
        assertEq(huffConstProxyBC.hash, Factory.codehash(huff));
    }
}
