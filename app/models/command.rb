class Command < ActiveRecord::Base
    has_many :hosts
    has_many :services

def nagios3_config
    config="\
define command {
    command_name    #{self.command_name}
    command_line    #{self.command_line}
}
"
    end
end
