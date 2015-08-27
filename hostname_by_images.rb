#!/usr/bin/ruby2.0

require 'json'

file = File.read(ARGV[0])

data = JSON.parse(file)

images = {}

data.each do |device|
  if device["current_image"].nil?
    next
  end


  if device["current_image"] == ARGV[1]
    puts device["hostname"]
  end
end
