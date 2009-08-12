class Contactgroup < ActiveRecord::Base
has_and_belongs_to_many :hosts
has_and_belongs_to_many :services
has_and_belongs_to_many :contacts


def members_string
    array=[]
    self.contacts.collect do |c|
        array.push(c.contact_name)
        end
    s=array.join(',')
    end

def nagios3_config
    config="\
define contactgroup {
    contactgroup_name   #{self.contactgroup_name}
    alias   #{self.alias} 
    members #{self.members_string}
}
"
    end
end
