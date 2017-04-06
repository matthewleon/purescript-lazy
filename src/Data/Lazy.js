"use strict";

exports.defer = function (thunk) {
  return function() {
    var result = thunk();
    thunk = function() {
      return result;
    };
    return result;
  };
};

exports.force = function (l) {
  return l();
};
