class Job
  # Setup reader/writer methods for 'uid' attribute
  attr_accessor :uid

  # Set defaults on instance creation
  def initialize
    @uid = 101
  end

end

# Create a new record instance
job1 = Job.new

# Get the uid for job1
puts "Job 1: #{job1.uid}"

job2 = Job.new
puts "Job 2: #{job2.uid}"