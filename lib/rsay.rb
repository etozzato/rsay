require 'rsay/language.rb'
require 'rsay/rsay.rb'
require 'rubygems'
require 'net/http'
require 'json'
require 'cgi'
require 'uri'
require 'htmlentities'

include Translate
def Translate.t(text, from, to)
  begin
    RSay.translate(text, from, to)
  rescue
    "Error: " + $!
  end
end

