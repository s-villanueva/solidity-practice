// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Twitter{

    struct Tweet{
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping(address => Tweet[]) public tweets;

    function createTweets(string memory _tweet) public {

        Tweet memory newTweet = Tweet({
            author:msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
    
        tweets[msg.sender].push(newTweet);
    }

    function getTweet (address _owner, uint _i) view  public returns (Tweet memory){
        return tweets[_owner][_i];
    }
    function getAllTweets (address _owner) view public returns (Tweet [] memory){
        return tweets[_owner];
    }

}