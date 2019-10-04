pragma solidity ^0.5.10;

contract HuffProxies {

    bytes internal proxyConstant_init = hex'6031600081600a8239f3600036808283378182918373E58d97b6622134C0436d60daeE7FBB8b965D97135af43d8083843e91901561002f57f35bfd';
    bytes internal proxyConstant_runtime = hex'600036808283378182918373E58d97b6622134C0436d60daeE7FBB8b965D97135af43d8083843e91901561002f57f35bfd';
    bytes32 internal proxyConstant_hash = keccak256(proxyConstant_runtime);

    bytes internal proxyStorage_init = hex'6000604a8038038091833960209010610029575160018060a01b0316600055601f600081602b8239f35bfd60003680828337818291836000545af43d8083843e91901561001d57f35bfd';
    bytes internal proxyStorage_runtime = hex'60003680828337818291836000545af43d8083843e91901561001d57f35bfd';
    bytes32 internal proxyStorage_hash = keccak256(proxyStorage_runtime);

    bytes internal proxy2d_init = hex'60003680828337818291835af43d8083843e91901561001a57f35bfd';
    bytes internal proxy2d_runtime = hex'60003680828337818291835af43d8083843e91901561001a57f35bfd';
    bytes32 internal proxy2d_hash = keccak256(proxy2d_runtime);
}

contract SolProxies {

}
