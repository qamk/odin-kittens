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
    if @kitten.update(kitten_params)
      redirect_to kitten_path(@kitten), notice: 'Your awwwh-some edit has been made'
    else
      flash.now[:error] = 'Your awwh-ful edit has not been made'
      render :edit
    end
  end

  # POST /kittens
  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to kitten_path(@kitten), notice: 'That awwwh-dorable kitten has been added'
    else
      flash.now[:error] = 'That awwh-ful kitten has not been added'
      render :new
    end
  end

  # DELETE /kittens/:id
  def destroy
    @kitten.destroy
    redirect_to root_path, notice: 'Deleted that for you'
  end

  private

  def grab_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness)
  end
end
