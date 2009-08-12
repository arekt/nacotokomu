class Timeperiod < ActiveRecord::Base
    has_many    :hosts
    has_many    :services

def nagios3_config
    config="\
define timeperiod {
    timeperiod_name #{self.timeperiod_name}
    alias #{self.alias}
    #{self.details}
}
"
end
end
