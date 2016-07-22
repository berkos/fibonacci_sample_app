# frozen_string_literal: true
require 'benchmark'

class FibonacciSequence
  ResultNotMatching = Class.new(StandardError)

  def initialize(number)
    @number = number
  end

  def self.call(number)
    new(number).call
  end

  def call
    record = FbResult.new
    record.sequence_number = number
    recursive_result = loop_result = nil

    record.recursive_time = Benchmark.realtime { recursive_result = recursive_fibonacci_calculation(number) }
    record.loop_time = Benchmark.realtime { loop_result = loop_fibonacci_calculation(number) }

    raise ResultNotMarching unless loop_result == recursive_result
    record.result = loop_result
    record.save!
    loop_result
  end

  private

  attr_reader :number

  def recursive_fibonacci_calculation(n)
    return n if (0..1).include?(n)
    recursive_fibonacci_calculation(n - 1) + recursive_fibonacci_calculation(n - 2)
  end

  def loop_fibonacci_calculation(n)
    a = 0
    b = 1

    # Compute Fibonacci number in the desired position.
    n.times do
      temp = a
      a = b
      # Add up previous two numbers in sequence.
      b = temp + b
    end

    return a
  end
end
