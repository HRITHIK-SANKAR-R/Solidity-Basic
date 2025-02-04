//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract SimpleStorage{
    uint256 public favnum=88;
    //uint256[] lfavnum=[1];

    
     struct Person{
        uint256 favn;
        string name;
     }
     Person public nigga1 = Person(7,"THALA");
    Person[] public ngakootam;
    

    mapping(uint256 => string) public dict;


    function store(uint256 _favnum) public virtual{
        favnum=_favnum;
    }
    function retrieve() public view returns (uint256){
        return favnum;
    }

    function Personel(uint256 num,string memory n) public{
        ngakootam.push(Person(num,n));
        dict[num]=n;
    }
}