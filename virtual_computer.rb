class Computer
  @@users = {}

  def Computer.get_users
    @@users
  end

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
end

my_computer = Computer.new("franciscohcf", "pass")

