// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Token} from "../src/Projects.sol";

contract AirdropScript is Script {
    Token token;
    address[] public wallets = [
        0xc7Cfd9898b4be87A13552084148442A2b4d4c23F,
        0x44cF205a7dbD9656b59c084BE7EF64880C2b3F07,
        0x5fd87F43716A28859b238b11EC49535b2BA4d447,
        0x97DBD6D0b07B3A66497Bb0da404ed6421584c54c,
        0x36b92f71116E50B8fd0aa1A4529922B54F1B5C3C,
        0xC4de020Cfb94D5e7Da5536551da6cfE01Dce33Ec,
        0x51F64E44A405D1a89176b752a86B692575F6E849,
        0xAEC4749fC27e35c2D5C6C83C52579CDa4f6a7A0E,
        0x399035F0493d7DA77E0c44ec87D9360021DaFD59,
        0x4B2bE391Da027155b21b725c37fF289A46d9C06c,
        0xfEB36e8150d1937809Ea25c2C4D4ff8cf0a85246,
        0xB1fC3B05dEDEc175678Be3C44cb0Ce63A6133C6b,
        0x295988D44C7eE38Eb0ABaD16668A310770EfD0fA,
        0x21D9E9dB2f504261B05f84D9cc7a4dC295B81fF8,
        0x973C84e8bB1C16a0ed47010723932732a21053C5,
        0x0c28fBA70C7506b1210e33d47097F7934915f8CB,
        0xdBf63CF92487fE846cf6742ba7a47E34DD0f0D56,
        0xF33443699bfF5249c56A8Fd776F01c30A8A0F2a7,
        0x15f99dcc6904D458FC0710c980E43a8A0a28307E,
        0x01DfF7f363552D9E195Ab25396680A536498573F,
        0x5Bf7583b93117e57c5ea6b3E799B0382751c07DA,
        0xEDc418502EF1a393240A62831a37072F0336AA6d,
        0x5A4b1164289a4161A73446F83D294Bb4e026e738,
        0x86f2f13a1d622014edE5695e3731F7A09bc7b481,
        0x732903f195c27C45Aa86a2045aa160442608F21A,
        0xcaa8615677eDbAacC857f25Bc669bC4A776642F5,
        0xF9E2d4b265Fef348e05AFf35658B85AC4F45d6eF,
        0xB38449e8bBC51580f85399A58480C3A79B634Cdc,
        0x01315aB5d2e074285DC38D7D79e5B5a14C69fa8a,
        0xBC23F89D18f702C34D655079A144037CEbd9257F,
        0x0c96b5CCc9dC8f19Df8e2a5c15efDB2dc20d70f9,
        0xa4F9e407751bE75AF10Fe5994860406D2bD45eFb,
        0x6Ecc59c35e3951201C803b821BfA801349eDF48f,
        0x7e4324afA7AeB899B0e4d98C2745083fD4eDE2Db,
        0x5FcA8FADd2586f1BDA506A0E36d7196A3A60bA9d,
        0xA5216C6F685c2b8a678A704107760Be652665234,
        0xf5d9E0cF7b63E0C2D8A7E830fdCe539bB3D0848D,
        0x3468E001c7592F8759a0753C9680931059836641
    ];

    error TransferFail(address wallet);

    function setUp() public {}

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        token = Token(0x177Ad3aD54715A84Fa906705c7F7660444d7d6e1);
        uint256 BAL = 100 * 1e18;
        console2.log("wallets length: ", wallets.length);
        for (uint256 i = 0; i < wallets.length; i++) {
            uint256 balance = token.balanceOf(wallets[i]);

            if (balance < 120 ether){
                token.transfer(wallets[i], BAL);
            }
            balance = token.balanceOf(wallets[i]);
            console2.log("wallet: ", wallets[i], "balance: ", balance);
            assert(balance == 120 ether);
        }

        vm.stopBroadcast();
    }
}
