library = Library.new(GAMES)
library_list = library.method(:list)
library_list.call
library_list = library.method(:emulate)
library_list.call("Contra")
