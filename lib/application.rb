require 'rubygems'
require 'sinatra/base'
require_relative 'sentence_generator'
require File.join(File.dirname(__FILE__), 'configuration')

class Application < Sinatra::Base
  get '/?' do
    content = []
    1.upto(Random.rand(10)+5) do
      paragraph = []
      1.upto(Random.rand(10)+5) do
        paragraph << SentenceGenerator.generate
      end
      content << "<p>#{paragraph.join(' ')}</p>"
    end
    content = content.join

    erb :index, :locals => {:content => content}
  end
end
