class ActorsController < ApplicationController
    def index
        @actors = Actor.all
    end

    def new
    end

    def create
    # puts params[:name]
      actor = Actor.create(name: params[:name],bio: params[:bio],birth_date: params[:birth_date],birth_place: params[:birth_place],image_url: params[:image_url])
      redirect_to '/actors'
    end
end
