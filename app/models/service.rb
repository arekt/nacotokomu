class Service < ActiveRecord::Base
    belongs_to :configuration
    belongs_to :timeperiod
    belongs_to :command
    has_and_belongs_to_many :hostgroups
    has_and_belongs_to_many :contactgroups

def contactgroups_string
    array=[]
    self.contactgroups.collect do |cg|
        array.push(cg.contactgroup_name)
        end
    s=array.join(',')
    end

def hostgroups_string
    array=[]
    self.hostgroups.collect do |hg|
        array.push(hg.hostgroup_name)
        end
    s=array.join(',')
    end

def nagios3_config
    config="\
define service {
    service_description #{self.service_description}
    host_group #{self.hostgroups_string}
    contact_group #{self.contactgroups_string}
    check_command #{self.command.command_name}
    notification_period #{self.timeperiod.timeperiod_name}
    # everything else from configuration
    #{self.configuration.details}
    }
"
    end
end
