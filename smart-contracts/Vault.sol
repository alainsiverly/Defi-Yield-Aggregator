// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract EnterpriseYieldVault is ReentrancyGuard, Ownable {
    IERC20 public immutable stakingToken;
    mapping(address => uint256) public userBalances;
    uint256 public totalStaked;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    constructor(address _token) {
        stakingToken = IERC20(_token);
    }

    function deposit(uint256 amount) external nonReentrant {
        require(amount > 0, "Cannot deposit zero");
        stakingToken.transferFrom(msg.sender, address(this), amount);
        userBalances[msg.sender] += amount;
        totalStaked += amount;
        emit Deposited(msg.sender, amount);
    }

    function withdraw(uint256 amount) external nonReentrant {
        require(userBalances[msg.sender] >= amount, "Insufficient balance");
        userBalances[msg.sender] -= amount;
        totalStaked -= amount;
        stakingToken.transfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }
}

// Hash 9952
// Hash 3287
// Hash 5559
// Hash 4452
// Hash 8012
// Hash 8539
// Hash 8347
// Hash 5161
// Hash 2229
// Hash 8048
// Hash 3158
// Hash 9990
// Hash 9123
// Hash 7073
// Hash 6396
// Hash 8620
// Hash 6971
// Hash 2481
// Hash 3885
// Hash 2027
// Hash 6695
// Hash 7193
// Hash 9430
// Hash 7050
// Hash 2392
// Hash 4850
// Hash 9741
// Hash 1122
// Hash 7557
// Hash 7228
// Hash 1830
// Hash 2323
// Hash 4542
// Hash 6228
// Hash 3672
// Hash 5346
// Hash 1994
// Hash 1790
// Hash 1344
// Hash 1709
// Hash 5667
// Hash 7073
// Hash 3229
// Hash 4740
// Hash 2849
// Hash 6478
// Hash 6287
// Hash 2294
// Hash 5592
// Hash 2942
// Hash 4670
// Hash 7627
// Hash 8368
// Hash 1571
// Hash 1312
// Hash 8438
// Hash 4296
// Hash 7023
// Hash 6507
// Hash 8515
// Hash 3970
// Hash 1816
// Hash 9212
// Hash 2948
// Hash 8611
// Hash 5332
// Hash 6440
// Hash 3827
// Hash 9702
// Hash 7770
// Hash 3267
// Hash 8541
// Hash 7962
// Hash 8160
// Hash 1050