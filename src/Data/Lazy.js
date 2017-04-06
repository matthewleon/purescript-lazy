"use strict";

exports.defer = function(thunk) {
  return [
    thunk,
    undefined,
    function() {
      if (this[1] !== undefined) return this[1];
      this[1] = this[0]();
      this[0] = undefined;
      return this[1];
    }
  ];
};

exports.force = function(lazy) {
  return lazy[2]();
};
