class ActorsController < ApplicationController
    def index
        @actors = Actor.all
    end

    def new
    end

    def create
    # puts params[:name]
      actor = Actor.create(name: params[:name])
      redirect_to '/actors'
    end
end
