pragma solidity ^0.5.10;

library Bytecode {
    struct Params {
        bytes init;
        bytes runtime;
        bytes32 hash;
    }
}

contract HuffProxies {

    Bytecode.Params internal huffConstProxyBC;
    Bytecode.Params internal huffStoreProxyBC;
    Bytecode.Params internal huff2dProxyBC;

    constructor() public {

        // constant proxy bytecode
        huffConstProxyBC.init = hex'6031600081600a8239f3600036808283378182918373E58d97b6622134C0436d60daeE7FBB8b965D97135af43d8083843e91901561002f57f35bfd';
        huffConstProxyBC.runtime = hex'600036808283378182918373E58d97b6622134C0436d60daeE7FBB8b965D97135af43d8083843e91901561002f57f35bfd';
        huffConstProxyBC.hash = keccak256(huffConstProxyBC.runtime);

        // storage proxy bytecode
        huffStoreProxyBC.init = hex'6000604e8038038091833960209010610029575160018060a01b0316600055601f600081602f8239f35b60006000fd60003680828337818291836000545af43d8083843e91901561001d57f35bfd';
        huffStoreProxyBC.runtime = hex'60003680828337818291836000545af43d8083843e91901561001d57f35bfd';
        huffStoreProxyBC.hash = keccak256(huffStoreProxyBC.runtime);

        // 2d proxy bytecode (incomplete)
        huff2dProxyBC.init = hex'60003680828337818291835af43d8083843e91901561001a57f35bfd';
        huff2dProxyBC.runtime = hex'60003680828337818291835af43d8083843e91901561001a57f35bfd';
        huff2dProxyBC.hash = keccak256(huff2dProxyBC.runtime);
    }
}
