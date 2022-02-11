pragma solidity ^0.5.0;

import "./KaseiCoinMintable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint256 rate, // rate in TKNbits
        address payable wallet, // sale beneficiary
        KaseiCoin token // The KaseiCoin itselfthat our contract will work with
    )
     Crowdsale(rate, wallet, token)
        public {
            // Constructor can stay empty
        }
}

contract KaseiCoinCrowdsaleDeployer {
    address public kasei_token_address;
    address public kasei_crowdsale_address;
