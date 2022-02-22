# frozen_string_literal: false

# rubocop:disable Style/For
# Top level comment to remove rubocop error
module Enumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    for item in self
      yield item
    end
  end

  def my_each_with_index
    index = 0
    return to_enum(:my_each_with_index) unless block_given?

    for item in self
      yield item, index
      index += 1
    end
  end
end
# rubocop:enable Style/For
