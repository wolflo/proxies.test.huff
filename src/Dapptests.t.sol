pragma solidity ^0.5.6;

import "ds-test/test.sol";

import "./Dapptests.sol";

contract DapptestsTest is DSTest {
    Dapptests tests;

    function setUp() public {
        tests = new Dapptests();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
