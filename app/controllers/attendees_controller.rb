class AttendeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_attendee, only: [:show, :edit, :update, :destroy]

  def index
    @attendees = Attendee.all
  end

  def show

  end

  def new
    @attendee = Attendee.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_attendee
    @attendee = Attendee.find(params[:id])
  end
	
end
