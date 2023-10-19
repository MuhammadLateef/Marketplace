// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Counter {
    uint public count = 2;
    function square() external {
        count = count ** 2;
    }
} 

//deployment contract address=> 0xf8e81D47203A594245E36C48e151709F0C19fBe8

interface ICounter {
    function count() external view returns (uint);
    function sqaure() external;
}

contract MyContract {
    function squareCounter(address _counter) external {
        ICounter(_counter).sqaure();
    }
    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}
