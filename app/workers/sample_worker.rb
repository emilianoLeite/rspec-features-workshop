class SampleWorker
  include Sidekiq::Worker

  def perform
    puts "\n IT WORKS!\n"
  end
end
