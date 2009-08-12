class ToolsController < ApplicationController
    def generate_configuration
        name = 'generated_objects.conf'
        directory = "public/data"
        path = File.join(directory, name)
   
        File.open(path, "wb") do |f| 
            for object in [Host,Service,Command,Timeperiod,Contactgroup,Hostgroup] do
               object.all.each do |o|
                    f.write(o.nagios3_config)
               end 
            end 
        end
    end
    def index
    end
end
