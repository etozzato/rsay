module Translate
  class UnsupportedLanguagePair < StandardError
  end

  class RSay
    class << self
      def translate(text, from, to)
        if Language::AVAILABLE_PAIR.include?("#{from}|#{to}")

          @uri = URI.parse("http://ajax.googleapis.com/ajax/services/language/translate")
          
          string = "#{@uri.path}?" + 
          { :langpair => "#{from}|#{to}", :q => text, :v => 1.0 }.map { |k,v| "#{k}=#{CGI.escape(v.to_s)}" }.join('&')
          
          coder = HTMLEntities.new
          coder.decode(JSON.parse(Net::HTTP.get(@uri.host, string))['responseData']['translatedText'])
        else
          raise UnsupportedLanguagePair, "Translation from '#{from}' to '#{to}' isn't supported yet!"
        end
      end

      alias_method :t, :translate
    end
  end
end
