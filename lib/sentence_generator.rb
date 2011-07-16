class SentenceGenerator
  class << self
    def generate
      "#{article.capitalize} #{noun} #{verb} #{preposition} #{article} #{noun}."
    end

    private

    def words
      unless @words
        words_path = File.join(File.dirname(__FILE__), 'words')
        @words = File.read(words_path).split("\n")
      end
      @words
    end

    def article
      ["the", "a", "one", "some", "any"].shuffle.first
    end

    def noun
      [
        "enterprise",
        "source",
        "source control",
        "change management",
        "platform",
        "iteration",
        "recursive",
        "intermediary language",
        "DSL",
        "XML",
        "JSON",
        "YAML",
        "pomodoro",
        "KANBAN",
        "XP",
        "integer",
        "string",
        "stack trace",
        "boxing",
        "contra variance",
        "debugger",
        "TDD",
        "BDD",
        "polymorphism",
        "stack overflow",
        "cloud",
        "DBA",
        "distributed",
        "immutable",
        "HTML",
        "JavaScript",
        "C#",
        "SQL",
        "UML",
        "TFS",
        "WCF",
        "SOAP",
        "packets",
        "agile",
        "evangelist",
        "aspect oriented programming",
        "SOLID"
      ].shuffle.first
    end

    def verb
      [
        "time boxed",
        "synergised",
        "interpreted",
        "rebased",
        "compiled",
        "debugged"
      ].shuffle.first
    end

    def preposition
      [
        "on",
        "onto",
        "on top of",
        "out of",
        "outside",
        "over",
        "past",
        "since",
        "through",
        "to",
        "toward",
        "under",
        "underneath",
        "until",
        "up",
        "upon",
        "with",
        "within",
        "without",
        "about",
        "above",
        "across",
        "after",
        "against",
        "along",
        "among",
        "around",
        "at",
        "before",
        "behind",
        "below",
        "beneath",
        "beside",
        "between",
        "by",
        "down",
        "during",
        "except",
        "for",
        "from",
        "in",
        "in front of",
        "inside",
        "instead of",
        "into",
        "like",
        "near",
        "of",
        "off"
      ].shuffle.first
    end
  end
end
