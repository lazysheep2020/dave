/*
 * Copyright (C) 2015-2018 Alibaba Group Holding Limited
 */

var pl2303 = function (id) {
  this.handle = UART.open(id);
  this.cb = null;
  var self = this;
  this.recv = function (start, end, cb) {
    self.cb = cb;
    UART.on(self.handle, start, end, self.cb);
  };

  this.send = function (str) {
    UART.write(this.handle, str);
  };
};
module.exports = pl2303;




