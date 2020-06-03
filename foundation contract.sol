pragma solidity ^0.6.6 ;

contract sendMoney {

```
struct User {
    string username;
    string email;

}

User[] public Users;

// creates the user; asks for username and email
.. does not verify any length for username
.. does not verify that email format is correctly inputed
function createUser(string memory _username, string memory _email) public {
    Users.push(User(_username, _email));

}
// this creates the a unique address using the username and the timestamp
// also increments user id; every new sign up adds 1 to their ID using the previous ID
.. Should use SafeMath integration so it never overflows or underflows
function createUser(string memory _username, string memory _email) public {
        address addr = address(uint160(uint256(keccak256(abi.encodePacked(_username, now)))));
        userId++;
        Users.push(User(_username, _email, userId, addr));

    }

```

}
