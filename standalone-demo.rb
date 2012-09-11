#!/usr/bin/env ruby

module Foo
  puts "const_defined?(:VERSION) before global constant: #{const_defined?(:VERSION)}"
end

VERSION = '1.2.3'

module Foo
  puts "const_defined?(:VERSION) after global constant: #{const_defined?(:VERSION)}"
end
