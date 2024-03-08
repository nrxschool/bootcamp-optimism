// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Token {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    event Transfer(address from, address to, uint256 amount);
    event Approval(address _owner, address _spender, uint256 amount);

    mapping(address => uint256) balances;
    // | key                                        | valor   |
    // | address                                    | uint256 |
    // | 0x7824A63A4051eB44723AAae83398c847e51187FA | 4       |
    // | 0x7824A63A4051eB44723AAae83398c847e51AAAAA | 1000    |

    mapping(address => mapping(address => uint256)) allowances;
    // | key          | key/valor    | valor   |
    // | address      | address      | uint256 |
    // | 0x782...87FA | 0x782...AAAA | 10      |
    // | 0x782...87FA | 0x782...BBBB | 170     |

    function balanceOf(address _owner) public view returns (uint256) {
        uint256 balanceOfUser = balances[_owner];
        return balanceOfUser;
    }

    function transfer(address _to, uint256 _value) public returns (bool) {
        require(balances[msg.sender] >= _value, "INSUFFICIENT_AMOUNT");

        balances[_to] += _value;
        balances[msg.sender] -= _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function approve(address _spender, uint256 _value) public {
        allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
    }

    function transferFrom(address _from, address _to, uint256 _value) public {
        require(allowances[_from][msg.sender] >= _value, "INSUFFICIENT_ALLOWANCE");

        balances[_from] -= _value;
        balances[_to] += _value;

        emit Transfer(_from, _to, _value);
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return allowances[_owner][_spender];
    }

    constructor() {
        name = "NearX Innovation School";
        symbol = "NRX";
        decimals = 18;

        totalSupply = 10000 * 10e18;
        balances[msg.sender] = totalSupply;
    }
}
