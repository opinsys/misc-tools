#!/usr/bin/ruby2.0

require 'json'

file = File.read(ARGV[0])

data = JSON.parse(file)

images = {}

data.each do |device|
  next if device["current_image"].nil?

  if images.has_key?(device["current_image"])
    images[ device["current_image"] ] += 1
  else
    images[ device["current_image"] ] = 1
  end

end

images.each do |key, value|
  puts "#{ key }\t#{ value }"
end
