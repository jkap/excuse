class Excuse
  def self.excuse
    excuses = File.readlines(File.join(File.dirname(__FILE__),"excuses"))
    print excuses.sample
  end
end