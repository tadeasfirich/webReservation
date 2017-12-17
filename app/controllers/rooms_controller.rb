class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  #TODO: Udělat vypisování do Pod každou budovu vždy její roomy, (dva cykly v sobě)
  # GET /rooms
  # GET /rooms.json
  def index
    @buildings = Building.all
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @lessons = Lesson.select{|lesson| lesson.room_id.equal?(@room.id)}
    @rooms = Room.select{|room| room.building_id.equal?(@room.building_id)}
    @building = @room.building
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:title, :code, :building_id)
    end
end
