def languages
  languages = {
    :oo => {
      :ruby => {:type => "interpreted"},
      :javascript => {:type => "interpreted"},
      :python => {:type => "interpreted"},
      :java => {:type => "compiled"}
    },
    :functional => {
      :clojure => {:type => "compiled"},
      :erlang => {:type => "compiled"},
      :scala => {:type => "compiled"},
      :javascript => {:type => "interpreted"}
    }
  }
end

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
  #key = oo or functional, value = language
    value.each do |key2, value2|
    #key2 = language, value2 = type
      new_hash[key2] ||= value2
      new_hash[key2][:style] ||= []
      new_hash[key2][:style] << key
    end
  end
  new_hash
end

puts reformat_languages(languages)
