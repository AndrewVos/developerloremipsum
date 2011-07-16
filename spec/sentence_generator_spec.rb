require_relative 'helper'
require 'sentence_generator'

describe SentenceGenerator do
  it "generates a sentence using common sentence parts" do
    [:article, :noun, :verb, :preposition].each do |part|
      SentenceGenerator.stub!(part).and_return(part.to_s)
    end
    SentenceGenerator.generate.should == "Article noun verb preposition article noun."
  end

  it "generates random sentences" do
    SentenceGenerator.generate.should_not == SentenceGenerator.generate
  end
end
