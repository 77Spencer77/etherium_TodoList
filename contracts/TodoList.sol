pragma solidity ^0.5.0;

contract TodoList {
    uint256 public taskCount = 0;
    struct Task {
        uint256 id;
        string content;
        bool status;
    }
    mapping(uint256 => Task) public tasks;

    constructor() public {
        createTask("Check out my github");
    }

    function createTask(string memory content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, content, false);
    }
}
