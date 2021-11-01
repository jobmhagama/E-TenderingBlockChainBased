// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Etendering {
    
    
    
  
   struct Company {
         uint id ;
         address add;
         string name;
         string location;
         string email;
         string  businessType;
         string tin;
         
         
    }
    
    
    uint public companies ;
    
    uint [] public cids ;
    
    
    
    mapping (address=>Company) public Companies ;
    
    function countCompanies()public view returns(uint  compamies){
        
        return companies;
        
    }
    
    function createCompany(string memory cname,string memory location,string memory email,string memory businessType,string memory tin) public {

        companies = companies + 1;

        address  cid = msg.sender;
        Companies[cid].add=cid;
        Companies[cid].name=cname;
        Companies[cid].location=location;
        Companies[cid].email=email;
        Companies[cid].businessType=businessType;
        Companies[cid].tin=tin;
        
       
    
    
    }
    
    // function Company(address _add) public view returns (string memory _name,address memory _companyid,string  memory _location,string memory _businessType){
        
        
        
    //     return (Companies[_add].name,Companies[_add].add,Companies[_add].location,Companies[_add].email,Companies[_add].businessType);
        
        
        
    // }
    
    
    function getCompany(address _address) public view returns(string memory name,address _companyid,string memory location){
        
        
        return(Companies[_address].name,Companies[_address].add,Companies[_address].location);
    
    }
    
    //create Etendering
    
    
    function newTender(string memory title,) public{
        
        
        
        
        
    }
    
    
    

 
}
