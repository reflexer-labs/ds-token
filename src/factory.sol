pragma solidity >=0.4.23;

import {DSDelegateToken} from "./delegate.sol";
import {DSToken} from "./token.sol";

contract DSTokenFactory {
    event LogMake(address indexed owner, address token);

    function make(
        bytes32 symbol, bytes32 name
    ) public returns (DSToken result) {
        result = new DSToken(symbol);
        result.setName(name);
        result.setOwner(msg.sender);
        emit LogMake(msg.sender, address(result));
    }
}

contract DSDelegateTokenFactory {
    event LogMake(address indexed owner, address token);

    function make(
        bytes32 symbol, bytes32 name
    ) public returns (DSDelegateToken result) {
        result = new DSDelegateToken(symbol);
        result.setName(name);
        result.setOwner(msg.sender);
        emit LogMake(msg.sender, address(result));
    }
}
