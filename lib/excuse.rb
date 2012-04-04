require 'net/telnet'

class Excuse
  def self.excuse
    excuse_conn = Net::Telnet::new("Host" => "towel.blinkenlights.nl",
                                  "Port" => 666)
    excuse_conn.cmd("") do |c|
      print c.gsub("\n=== The BOFH Excuse Server ===\n\e[H\n", "").strip unless c.eql? "\e[H\e[J"
    end

    print "\n"
  end
end