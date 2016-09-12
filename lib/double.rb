module And

  def output
    out = self.instance_variables.map { |v| v.to_s.delete("@") }
    result = out.reduce([]) do |result, input|
      result << self.send(input)
      result
    end
    return 0 if result.include?(0)
    return 1
  end

  class Double
    include And
    attr_accessor :input_a, :input_b

    def initialize
      @input_a = 0
      @input_b = 0
    end

  end
end
