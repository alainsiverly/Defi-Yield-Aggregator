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
// Hash 5333
// Hash 4536
// Hash 8546
// Hash 7356
// Hash 3892
// Hash 4230
// Hash 1048
// Hash 8123
// Hash 6081
// Hash 5164
// Hash 2090
// Hash 4846
// Hash 7738
// Hash 6311
// Hash 4034
// Hash 2176
// Hash 7869
// Hash 2576
// Hash 2085
// Hash 2028
// Hash 6075
// Hash 8727
// Hash 4826
// Hash 2350
// Hash 2941
// Hash 1077
// Hash 4498
// Hash 5328
// Hash 3541
// Hash 4614
// Hash 8450
// Hash 4044
// Hash 9583
// Hash 2202
// Hash 6921
// Hash 9390
// Hash 2058
// Hash 3514
// Hash 9326
// Hash 2163
// Hash 1969
// Hash 9815
// Hash 1577
// Hash 6507
// Hash 3894
// Hash 4376
// Hash 2258
// Hash 7156
// Hash 2600
// Hash 9389
// Hash 1261
// Hash 6009
// Hash 5976
// Hash 6450
// Hash 9460
// Hash 5515
// Hash 9341
// Hash 5360
// Hash 9279
// Hash 7000
// Hash 6197
// Hash 3218
// Hash 7612
// Hash 5918
// Hash 4099
// Hash 6371
// Hash 5938
// Hash 2874
// Hash 5415
// Hash 8434
// Hash 1778
// Hash 3252
// Hash 4865
// Hash 8312
// Hash 1492
// Hash 5182
// Hash 7119
// Hash 6123
// Hash 6902
// Hash 1005
// Hash 5165
// Hash 8434
// Hash 8096
// Hash 4368
// Hash 5155
// Hash 4596
// Hash 7289
// Hash 7301
// Hash 3852
// Hash 6966
// Hash 8492
// Hash 8252
// Hash 1023
// Hash 3026
// Hash 3892
// Hash 1929
// Hash 2184
// Hash 7410
// Hash 9816
// Hash 6541
// Hash 9950
// Hash 9276
// Hash 1281
// Hash 5751
// Hash 3381
// Hash 3798
// Hash 6295
// Hash 3659
// Hash 1340
// Hash 9263
// Hash 1852
// Hash 7118
// Hash 6456
// Hash 9274
// Hash 6596