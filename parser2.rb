#!/usr/bin/env ruby
#Random Twitter bots, Daniel Batalha
#Twitter scrapper "Depracated"

require 'rubygems'    # only if "json" lib installed as gem
require 'json'
require 'open-uri'

OPENHANDLE = "http: //search.twitter.com/search.json?q=android&since=2012-08-06&until=2012-08-08&rpp=100&page=1"

handle, querystring = ARGV[0].split('?')
handle.sub!(/^hdl:/, "")
args = {}
if querystring
    querystring.split('&').each do |arg|
        key, val = arg.split('=')
        if args.has_key?(key)
            args[key] << val
        else
            args[key] = [ val ]
        end
    end
end

begin
    uri = URI.parse(OPENHANDLE + '?' + URI.encode("id=#{handle}&format=json"))
    json = uri.open.read
    
    h = JSON.parse(json)
    
    values = h['handleValues']
    n_value = 0
    s = ""
 
    values.each do |value|
    
        n_value += 1
    
        skip = false

        if args.length > 0
            skip = true
            args.keys.each do |key|
                if value.has_key?(key)
                    args[key].each do |val|
                        skip = false if value[key].to_s =~ /^#{val}$/i
                    end
                end
            end
        end

        next if skip

        s += "\nvalue \##{n_value}:\n"
        s += "  index = #{value['index']}\n"
        s += "  type = #{value['type']}\n"
        if value['data'].class == String
            s += "  data = #{value['data']}\n"
        else
            s += "  data = [#{value['data'].class}]\n"
        end
        s += "  permission = #{value['permission']}\n"
        s += "  ttl = #{value['ttl'].to_i / 3600} hours\n"
        s += "  timestamp = #{value['timestamp']}\n"
        s += "  reference = [#{value['reference'].class}]\n"
    
    end
    s1 = "The handle <hdl:#{handle}"
    s1 += "?#{querystring}" unless querystring.nil?
    s1 += "> has #{n_value} values (of #{values.length}):\n"
    puts s1, s

rescue => e

    puts "! Error reading handle \"#{handle}\""
    puts "#{$!.inspect}\n\n"
    puts "#{e.backtrace.join("\n")}\n\n"

end

