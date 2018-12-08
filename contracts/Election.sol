pragma solidity ^0.4.24;

contract Election{
  //model  a candidate
  struct Candidate{
  uint id;
  string name;
  uint voteCount;
}
  //store candidate
mapping(uint=> Candidate) public candidates;
  //fetch candidate
// store candidates count
uint public candidatesCount;


 //constructor
 function Election () public {
      addCandidate("Candidate 1");
      addCandidate("Candidate 2");
 }

  function addCandidate(string _name) private{
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }


}
