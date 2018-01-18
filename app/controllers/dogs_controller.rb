class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]
  before_action :set_breeds,only:[:index,:create]

  # GET /dogs
  # GET /dogs.json
  def index
    @name = params[:name]
    @owner_name = params[:owner]
    @breed = params[:breed]


    @dogs = Dog.all

    if @genre.present? || @name.present? || @owner_name.present? || @breed.present? 

      #@dogs = @dogs.where(genre: @genre ) unless @genre.blank?
      @dogs = @dogs.where(name: @name) unless @name.blank?
      @dogs = @dogs.where(owner_name: @owner_name) unless @owner_name.blank?

      #@dogs = @dogs.where(castrated: @castrated == 'Sim' ? true : false) unless @castrated.blank?

      @dogs = @dogs.where(breed: @breed) unless @breed.blank?

    end

    @dogs = @dogs.order(birthday: :desc)
    @dogs = @dogs.paginate(:page => params[:page], :per_page => 20) 

  end

  # GET /dogs/1
  # GET /dogs/1.json
  def show
  end

  # GET /dogs/new
  def new
    @dog = Dog.new
  end

  # GET /dogs/1/edit
  def edit
  end

  # POST /dogs
  # POST /dogs.json
  def create
    @dog = Dog.new(dog_params)

    respond_to do |format|
      if @dog.save
        format.html { redirect_to @dog, notice: 'Dog was successfully created.' }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogs/1
  # PATCH/PUT /dogs/1.json
  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to @dog, notice: 'Dog was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog }
      else
        format.html { render :edit }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to dogs_url, notice: 'Dog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_breeds

      @breeds = Breed.all

    end
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Dog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_params
      params.require(:dog).permit(:breed, :genre, :castrated, :birthday, :name, :owner_name, :owner_fone, :last_date)
    end
end
