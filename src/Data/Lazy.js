"use strict";

exports.defer = function (thunk) {
  var v = null;
  return function(peek) {
    if (thunk === undefined) return v;
    if (peek) return thunk();

    v = thunk();
    thunk = undefined; // eslint-disable-line no-param-reassign
    return v;
  };
};

exports.force = function (l) {
  return l();
};

exports.peek = function (l) {
  return l(true);
};
