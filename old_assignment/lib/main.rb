# frozen_string_literal: false

require_relative 'enumerable'
puts '#my_each vs #each'
array = [1, 2, 3]
hash = { a: 1, b: 2, c: 3 }

puts '#each array & hash'
array.each { |item| puts item }
hash.each { |k, v| puts "#{k}, #{v}" }
puts '#my_each array & hash'
array.my_each { |item| puts item }
hash.my_each { |k, v| puts "#{k}, #{v}" }

