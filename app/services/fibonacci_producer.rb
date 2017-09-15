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
    FibonacciSequenceJob.perform_async(number)
  end

  private

  attr_reader :number
end
