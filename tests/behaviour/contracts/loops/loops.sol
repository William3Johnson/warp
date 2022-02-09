pragma solidity ^0.8.10;

//SPDX-License-Identifier: MIT

contract WARP {
  function forLoop(uint8 bound) pure public returns (uint8) {
    uint8 x = 1;
    for(uint8 i = 0; i < bound; ++i) {
      x *= 2;
    }

    return x;
  }

  function whileLoop(uint8 target) pure public returns (uint8) {
    uint8 x = 0;
    while(x != target) {
      x++;
    }
    return x;
  }

  function innerReturn(uint8 target) pure public {
    uint8 x = 0;
    while(x != target) {
      return;
    }
    revert();
  }

  function breaks(uint8 target) pure public returns (uint8) {
    uint8 x = 0;
    while(x != target * 2) {
      if (x == target) break;
      ++x;
    }
    return x;
  }

  function continues(uint8 count) pure public returns (uint8) {
    uint8 x = 3;
    for(uint8 i = 0; i < count; ++i) {
      if (i == 2) continue;
      x *= 2;
    }
    return x;
  }
}
