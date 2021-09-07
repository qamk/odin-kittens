class KittensController < ApplicationController
  before_action :grab_kitten, except: %i[index new create]

  # GET /kittens
  def index
    @kittens = Kitten.all
  end

  # GET /kittens/:id
  def show
  end

  # GET /kittens/new
  def new
    @kitten = Kitten.new
  end

  # GET /kittens/:id/edit
  def edit
  end

  # PUT or PATCH /kittens/:id
  def update
  end

  # POST /kittens
  def create
    @kitten = Kitten.new(kitten_params)
  end

  # DELETE /kittens/:id
  def destroy
  end

  private

  def grab_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness)
  end
end
