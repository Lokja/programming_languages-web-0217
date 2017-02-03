languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  hash2 = {}
  languages.map{|clas, group| group.map{|language, pair| hash2[language] = pair}}
  languages.map{|clas, group| group.map{|language, pair| hash2[language][:style] = [clas]}}
  hash2[:javascript][:style].unshift(:oo)
  hash2
end
