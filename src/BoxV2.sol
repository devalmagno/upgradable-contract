// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract BoxV2 is UUPSUpgradeable {
    uint256 internal s_number;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function setNumber(uint256 _number) public {
        s_number = _number;
    }

    function getNumber() public view returns (uint256) {
        return s_number;
    }

    function version() public pure returns (uint256) {
        return 2;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
