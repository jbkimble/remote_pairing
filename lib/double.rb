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

  class Triple
    include And

    attr_accessor :input_a, :input_b, :input_c

    def initialize
      @input_a = 0
      @input_b = 0
      @input_c = 0
    end
  end

  class Multi
    include And

    attr_accessor :input_a, :input_b, :input_c, :input_d

    def initialize
      @input_a = 0
      @input_b = 0
      @input_c = 0
      @input_d = 0
    end
  end
end
