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
    

    
    //This is the tender section of the contract

     struct Tender {
      uint id;
      uint openingDate;
      uint clossingDate;
      address company_Address;
      string title ;
      string description;
      string status;
      string link ;
    
    }
    
    uint public tenders ;
    //All tender id will be stored here for proper looping
    uint [] public tids ;
    //tender ids
    uint tid;
    mapping ( uint => Tender) public Tenders ;

     
        
    function newTender(string memory title,string memory description,uint256 openingdate,uint clossingdate,string memory documents) public{
        
      //add new object in the mapping
      address manager = msg.sender ;
       tid=tid+1;
       Tenders[tid].id=tid;
       Tenders[tid].company_Address=manager;
       Tenders[tid].title=title;
       Tenders[tid].description=description;
       Tenders[tid].status="pending";
       Tenders[tid].link= documents;
       Tenders[tid].openingDate=openingdate;
       Tenders[tid].clossingDate= clossingdate;
    }

    function getTender(uint id) public  view returns(uint _tid,address _manager,string memory title,string memory description){

        return (Tenders[id].id,Tenders[id].company_Address,Tenders[id].title,Tenders[id].description);

    }


    //Bidding section of the contract


    
 
}
