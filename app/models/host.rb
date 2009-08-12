class Host < ActiveRecord::Base
    has_and_belongs_to_many :contactgroups
    has_and_belongs_to_many :hostgroups
    belongs_to :configuration
    belongs_to :timeperiod
    belongs_to :command

def nagios3_config
s="\
define host {
    host_name #{self.host_name}
    alias #{self.alias}
    address #{self.address}
    check_command #{self.command.command_name}
    notification_period #{self.timeperiod.timeperiod_name}
    # everything else from configuration
    #{self.configuration.details}
}
"
end
end
