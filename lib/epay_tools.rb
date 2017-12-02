require "auto_autoloader"
require "service_pattern"

class EpayTools
  AutoAutoloader.autoload_sub_classes(self, __FILE__)
end
