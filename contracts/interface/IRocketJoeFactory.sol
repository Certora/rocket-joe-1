// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;

interface IRocketJoeFactory {
    event RJLaunchEventCreated();

    function penaltyCollector() external view returns (address);

    function wavax() external view returns (address);

    function router() external view returns (address);

    function factory() external view returns (address);

    function rJoe() external view returns (address);

    function getRJLaunchEvent(address token) external view returns (address launchEvent);

    function allRJLaunchEvent(uint256) external view returns (address pair);

    function allRJLaunchEventLength() external view returns (uint256);

    function createRJLaunchEvent(
        address _issuer,
        uint256 _phaseOneStartTime,
        address _token,
        uint256 _tokenAmount,
        uint256 _floorPrice,
        uint256 _withdrawPenatlyGradient,
        uint256 _fixedWithdrawPenalty,
        uint256 _minAllocation,
        uint256 _maxAllocation,
        uint256 _userTimelock,
        uint256 _issuerTimelock
    ) external returns (address pair);

    function setPenaltyCollector(address) external;

    function setRouter(address) external;

    function setFactory(address) external;

    function setRJoe(address) external;
}
