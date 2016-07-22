class FibonacciConsumer
  include Hutch::Consumer
  consume 'sample_app.fibonacci'

  def process(message)
    FibonacciSequenceJob.perform_async(message[:number])
  end
end
