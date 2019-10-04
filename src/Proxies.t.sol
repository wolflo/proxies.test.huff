pragma solidity ^0.5.10;

import "ds-test/test.sol";

import "./ProxyCode.sol";
import "./Factory.sol";

contract ProxiesTest is DSTest, Factory, HuffProxies {

    address internal proxyConstant;
    address internal proxyStorage;
    address internal proxy2d;

    function setUp() public {
        proxyConstant = deploy(proxyConstant_init);
        // proxyStorage = deploy(proxyStorage_init);
        // proxy2d = deploy(proxy2d_init);
    }

    function testDeployment() public {
        assertEq(proxyConstant_hash, codehash(proxyConstant));
        // assertEq(proxyStorage_hash, codehash(proxyStorage));
        // assertEq(proxy2d_hash, codehash(proxy2d));
    }

    function codehash(address addr) internal view returns (bytes32 hash) {
        assembly { hash := extcodehash(addr) }
    }

}
