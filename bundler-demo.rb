#!/usr/bin/env ruby

require 'bundler'
Bundler.require

puts "Global VERSION is: #{VERSION}"

Excon.module_eval do
  puts "const_defined?(:VERSION) inside module Excon is: #{const_defined?(:VERSION)}"
end

excon_version =
  begin
    Excon::VERSION
  rescue Exception
    'NOT DEFINED'
  end

puts "Excon::VERSION is: #{excon_version}"
