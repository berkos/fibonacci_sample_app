# frozen_string_literal: true
require 'benchmark'
require 'hutch'

class FibonacciProducer
  ResultNotMatching = Class.new(StandardError)

  def initialize(number)
    @number = number
  end

  def self.call(number)
    new(number).call
  end

  def call
    Hutch.connect
    Hutch.publish('sample_app.fibonacci', { number: number })
  end

  private

  attr_reader :number
end
