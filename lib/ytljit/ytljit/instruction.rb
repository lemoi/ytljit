#
# 
#
require 'singleton'

module YTLJit

  class Operand
  end

  class OpImmidiate<Operand
    def initialize(value)
      @value = value
    end

    attr :value
  end

  class OpImmidiate8<OpImmidiate
  end

  class OpImmidiate16<OpImmidiate
  end

  class OpImmidiate32<OpImmidiate
  end

  class OpImmidiate64<OpImmidiate
  end

  class OpMemory<Operand
    def initialize(address)
      @value = address
    end

    def address
      @value
    end

    attr :value
  end

  class OpMem8<OpMemory
  end

  class OpMem16<OpMemory
  end

  class OpMem32<OpMemory
  end

  class OpMem64<OpMemory
  end

  class OpRegistor<Operand
    include Singleton
    def value
      reg_no
    end
  end
end