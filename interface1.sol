// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// interface IERC20 {
//     event Transfer(address indexed from, address indexed to, uint256 value);
//     event Approval(
//         address indexed owner,
//         address indexed spender,
//         uint256 value
//     );

//     function totalSupply() external view returns (uint256);

//     function balanceOf(address account) external view returns (uint256);

//     function transfer(address to, uint256 amount) external returns (bool);

//     function allowance(address owner, address spender)
//         external
//         view
//         returns (uint256);

//     function approve(address spender, uint256 amount) external returns (bool);

//     function transferFrom(
//         address from,
//         address to,
//         uint256 amount
//     ) external returns (bool);
// }
// ---------(Tesk1) ----------
//1) Observe and deploy the following smart contract.
// 2) Can we deploy the interface named ‘Calculator’?
// when we deploy interface named calculater it gives an message'(This contract may be abstract, it may not implement an abstract parent's methods completely or it may not invoke an inherited contract's constructor correctly.)' 
interface Calculator {
    function getResult() external view returns (uint256);
}

contract Temp is Calculator {
    constructor() {}

    function getResult() external pure returns (uint256 result) {
        uint256 a = 2;
        uint256 b = 5;
        result = b / a;
    }
}
