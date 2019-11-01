pragma solidity ^0.5.8;

contract Logic {
    uint256 internal _;    // reserve first storage slot for proxy target
    uint256 public val;

    event LogCall(address src, uint256 val, bytes data);

    function setVal(uint256 _val) public {
        val = _val;
    }

    function getVal() public view returns (uint256) {
        return val;
    }

    function fail() external pure {
        revert("revert-string");
    }

    function () external payable {
        emit LogCall(msg.sender, msg.value, msg.data);
    }
}
