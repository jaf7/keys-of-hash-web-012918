require 'pry'
class Hash

  def keys_of(*arguments)
    # binding.pry
    self.select {|key, value| arguments.include?(value)}.map {|k, v| k}
  end

  # The method below works, but has code smell?
  # https://stackoverflow.com/a/13485482

  # def keys_of(*arguments)
  #   key_array = self.collect do |key, value|
  #     # binding.pry
  #     if arguments.include?(value)
  #       key
  #     end
  #   end
  #   # binding.pry
  #   key_array.compact
  # end

end
