require 'open-uri'
require 'zlib'
require 'yajl'
 
module READLEADER

  

class Search
  
  
  
  

  attr_accessor :event_found, :event
  attr_reader :get, :read

    def initialize(options={})
       
       
      @get = []
      @read = []
      @event = []
       
      @get = parse(options)[:get]
      @read = parse(options)[:read]
      @event_found = options[:event]
      
      
    end
   
    def execute
      
      threads = []
  
  
    @event_found.step do |event|
      
      threads << Thread.new do
      
        event = gz
      
      gz = "http://data.githubarchive.org/2015-01-01-15.json.gz"
      
      parse(gz)
      
                            end
                                end
    end
  
  def to_s
     
     output = []
     @owners.each do |slug, login|
       output << "#{slug} - #{login} login"
   end
     output.join("\n")
     
  end
  
    

def parse(gz)

js = Zlib::GzipReader.new(open(gz)).read


Yajl::Parser.parse(js) do |event|
  
  
  
  event['slug'] = event['repository'].nil? ? event['gz'] : "#{event['repository']['login']}/#{event['repository']['created_at']}"
    
  @event_found << event if event_found?(event_found?(event['login'])) && event_found?(event_found?(event['created_at']))

                      end
                      
  
end

  def event_found?(event_found)
    
    @event_found == event_found
    
  end  
  
end
end

