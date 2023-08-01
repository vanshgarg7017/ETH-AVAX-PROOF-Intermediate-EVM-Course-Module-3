// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Token{
    string public tokenName="ComputerScience";
    string public TokenAbbrv="CS";
    uint public totalsupply=0;
    mapping (address=>uint) public _mybalance;
    // mint function
    function mint(address _myaddress, uint _myvalue) public {
        totalsupply+=_myvalue;
        _mybalance[_myaddress]+=_myvalue;
    }
    function burn(address _myaddress, uint _myvalue) public {
        if(_mybalance[_myaddress]>=_myvalue){
            totalsupply-=_myvalue;
            _mybalance[_myaddress]-=_myvalue;
        }
    }
}
