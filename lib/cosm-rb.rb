require 'nokogiri'
require 'multi_json'
require 'multi_xml'

$:.unshift(File.dirname(File.expand_path(__FILE__)))

$KCODE = 'u' if RUBY_VERSION.to_f < 1.9

require 'cosm-rb/helpers'
require 'cosm-rb/base'
require 'cosm-rb/validations'
require 'cosm-rb/object_extensions'
require 'cosm-rb/nil_content'
require 'cosm-rb/exceptions'
require 'cosm-rb/string_extensions'
require 'cosm-rb/array_extensions'
require 'cosm-rb/hash_extensions'
require 'cosm-rb/templates/defaults'
require 'cosm-rb/parsers/defaults'
require 'cosm-rb/feed'
require 'cosm-rb/datastream'
require 'cosm-rb/datapoint'
require 'cosm-rb/search_result'
require 'cosm-rb/trigger'
require 'cosm-rb/key'
require 'cosm-rb/permission'
require 'cosm-rb/resource'

require 'cosm-rb/client'

if defined?(JRUBY_VERSION)
  MultiXml.parser = :nokogiri
else
  MultiXml.parser = :ox
end

if RUBY_VERSION.to_f < 1.9
  require 'fastercsv'
  Cosm::CSV = FasterCSV
else
  require 'csv'
  Cosm::CSV = CSV
end

