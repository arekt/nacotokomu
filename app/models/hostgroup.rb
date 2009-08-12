class Hostgroup < ActiveRecord::Base
    has_and_belongs_to_many :hosts
    has_and_belongs_to_many :services

def members_string
    array=[]
    self.hosts.collect do |h|
        array.push(h.host_name)
        end
    s=array.join(',')
    end

def nagios3_config
    config="\
define hostgroup {
    hostgroup_name   #{self.hostgroup_name}
    alias   #{self.alias} 
    members #{self.members_string}
}
"
    end
end
