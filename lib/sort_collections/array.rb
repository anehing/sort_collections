class Array

  def order_collection(options = {})
    return self if self.empty?
    if first.is_a?(Hash)
      return order_hash(self, options)
    end
    self
  end

  private
    def order_hash(array, options={})
      order_type = options[:order_type] || "asc"
      order_with = options[:order_with] || "id"

      # to collect 'order_with' values for all
      order_elements = array.collect{|element| element[order_with]}
      order_type == "asc" ? order_elements.sort! : order_elements.sort!{ |x, y| y <=> x }

      array_to_hash = {}
      array_times   = array.length.times
      array_times.each {|index| array_to_hash[index] = array[index]}

      after_order_array = []
      order_elements.each do |element|
        array_to_hash.each do |key, value|
          if value[order_with].to_s == element.to_s
            after_order_array << value
            array_to_hash.delete(key)
          end
        end
      end

      after_order_array
    end
end