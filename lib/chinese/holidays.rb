require "chinese/holidays/version"
require "chinese/holidays/days"
require 'json'
require 'date'

module Chinese
  module Holidays
    # List all holidays
    def self.all
      self.events.select {|event| event.type == 'holiday'}
    end

    def self.is_holiday?(date)
      event = self.event(date)

      return self.weekend?(self.to_date(date)) if event.nil?

      event.holiday?
    end

    def self.is_workingday?(date)
      event = self.event(date)

      return !self.weekend?(self.to_date(date)) if event.nil?

      event.workingday?
    end

    def self.event(date)
      if date.is_a? Date
        self.load_holidays[date]
      elsif date.respond_to? :to_date
        self.load_holidays[date.to_date]
      end
    end

    protected
    def self.to_date(date)
      if date.is_a? Date
        date
      elsif date.respond_to? :to_date
        date.to_date
      else
        date
      end
    end

    def self.weekend?(date)
      date.wday == 6 && date.wday == 0
    end

    def self.events
      @events ||= Dir.glob(File.expand_path('../holidays/data/*.json', __FILE__)).flat_map do |file|
        days_of_year = File.open(file) { |f| JSON.parse(f.read) }
        days_of_year.map do |days|
          Days.new(days['name'], days['range'], days['type'])
        end
      end
    end

    def self.load_holidays
      @books ||= begin
        books = {}
        self.events.each do |event|
          event.days.each do |day|
            books[day] = event
          end
        end

        books
      end
    end
  end
end
