pragma solidity ^0.5.10;

library Factory {

    // returns address payable because solidity is fucking stupid
    function deploy(bytes memory initCode) internal returns (address payable dst) {
        assembly {
            dst := create(0, add(initCode, 0x20), mload(initCode))

            // check that code is deployed at the address (create2 succeeded)
            if iszero(extcodesize(dst)) {
                revert(0, 0)
            }
        }
    }


    function codehash(address addr) internal view returns (bytes32 hash) {
        assembly { hash := extcodehash(addr) }
    }
}
