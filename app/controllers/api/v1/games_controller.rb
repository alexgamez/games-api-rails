# module Api::V1
#   class GamesController < ApplicationController
#     def index
#        @games = Game.all
#        # render json: Game.all
#     end
#   end
# end

class Api::V1::GamesController < ApplicationController

  before_action :set_game, only: [:show, :update, :destroy]

  def index
     @games = Game.all.order('created_at DESC');
  end

  def show
  end

  def create
    @game = Game.new(game_params)

    if !@game.save
      render json: {status: 'ERROR', message:'Game not saved', data:@game.errors},status: :unprocessable_entity
    end
  end

  def update
    if @game.update_attributes(game_params)
      render json: {status: 'SUCCESS', message:'Updated game', data:@game},status: :ok
    else
      render json: {status: 'ERROR', message:'Game not updated', data:@game.errors},status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy
    render json: {status: 'SUCCESS', message:'Deleted @game', data:@game},status: :ok
  end

  private
    def game_params
      params.permit(:title, :genre, :platform)
    end

    def set_game
      @game = Game.find(params[:id])
    end
end
