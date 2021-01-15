class Api::ActorsController < ApplicationController
  def sample_action
    puts "Please enter an id:"
    id = gets.chomp
    @retrieved_actor = Actor.find_by(id: id.to_i)
    @message = "Sanity Check"
    render "actor.json.jb"
  end
end
