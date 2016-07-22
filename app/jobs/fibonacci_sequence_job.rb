# frozen_string_literal: true
class FibonacciSequenceJob
  include Sidekiq::Worker

  def perform(number)
    FibonacciSequence.call(number)
  end
end
