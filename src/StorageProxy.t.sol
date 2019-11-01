pragma solidity ^0.5.10;

import "ds-test/test.sol";

import "./Logic.sol";
import "./Factory.sol";
import "./HuffProxies.sol";

contract StorageProxyTest is DSTest, HuffProxies {
    address internal logic;
    address payable internal huff;
    address internal sol;

    function setUp() public {
        logic = address(new Logic());
        huff = Factory.deploy(
            abi.encodePacked(
                huffStoreProxyBC.init,
                bytes32(uint256(logic))
            )
        );
    }

    function testDeployment() public {
        assertEq(huffStoreProxyBC.hash, Factory.codehash(huff));
    }

    function testForwardTx() public {
        Logic proxy = Logic(huff);
        proxy.setVal(1);
        assertEq(proxy.getVal(), 1);
    }

    function testFailForwardRevert() public {
        Logic proxy = Logic(huff);
        proxy.fail();
    }
}
