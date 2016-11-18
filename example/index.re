let module Printer = {
  let createElement message::message children () => print_endline message;
};

let main () => Scheduler.fork <Printer message="Hello world" />;

Scheduler.run main;
