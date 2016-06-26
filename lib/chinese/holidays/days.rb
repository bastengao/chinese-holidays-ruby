# freeze_literal_string: true
module Chinese
  module Holidays
    class Days
      attr_reader :name, :range, :type

      def initialize(name, range, type)
        @name = name
        @range = range
        @type = type
      end

      def holiday?
        @type == 'holiday'
      end
      
      def workingday?
        @type == 'workingday'
      end

      def days
        if @range.size == 1
          [Date.strptime(@range[0], '%Y.%m.%d')]
        elsif @range.size == 2
          (Date.strptime(@range[0], '%Y.%m.%d')..Date.strptime(@range[1], '%Y.%m.%d')).to_a
        end
      end
    end
  end
end
