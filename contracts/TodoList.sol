// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract TodoList{
    uint256 public taskCount;
    
    struct Task{
        string taskName;
        bool isComplet;
    }
    mapping(uint256 => Task) public todos;
    
    event TaskCreated(string task, uint256 taskNumber);
    
    constructor() public {
        taskCount = 0;
    }
    
    function createTask(string memory _taskName) public {
        //add task mapping and imcrement taskCount
        todos[taskCount++] = Task(_taskName, false);
        //emit event
        emit TaskCreated(_taskName, taskCount - 1);
    }
    
}