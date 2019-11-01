pragma solidity ^0.5.10;

// The equivalent of the Huff Constant Proxy in Solidity inline assembly
contract SolConstantProxy {

    // The first deployed address from a Dapp test (hardcoded and specific to
    // the current testing framework)
    address constant private target = 0xE58d97b6622134C0436d60daeE7FBB8b965D9713;

    function () external payable {

        // copy target address into memory
        address _target = target;

        assembly {
            // calldatacopy(dstOffset, calldataOffset, len)
            calldatacopy(0x00, 0x00, calldatasize())

            // delegatecall(gas, dst, argsOffset, argsLen, retOffset, retLen)
            let success := delegatecall(gas, _target, 0, calldatasize(), 0, 0)

            // returndatacopy(dstOffset, returndataOffset, len)
            returndatacopy(0, 0, returndatasize())

            // if delegatecall encountered exception, revert with returndata
            if eq(success, 0) { revert(0, returndatasize()) }

            // else, return with returndata
            return(0, returndatasize())
        }
    }
}
