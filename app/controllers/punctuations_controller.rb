class PunctuationsController < ApplicationController
  before_action :set_punctuation, only: [:show, :edit, :update, :destroy]

  # GET /punctuations
  # GET /punctuations.json
  def index
    @punctuations = Punctuation.all
  end

  # GET /punctuations/1
  # GET /punctuations/1.json
  def show
  end

  # GET /punctuations/new
  def new
    @punctuation = Punctuation.new
  end

  # GET /punctuations/1/edit
  def edit
  end

  # POST /punctuations
  # POST /punctuations.json
  def create
    @punctuation = Punctuation.new(punctuation_params)

    respond_to do |format|
      if @punctuation.save
        format.html { redirect_to @punctuation, notice: 'Punctuation was successfully created.' }
        format.json { render :show, status: :created, location: @punctuation }
      else
        format.html { render :new }
        format.json { render json: @punctuation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punctuations/1
  # PATCH/PUT /punctuations/1.json
  def update
    respond_to do |format|
      if @punctuation.update(punctuation_params)
        format.html { redirect_to @punctuation, notice: 'Punctuation was successfully updated.' }
        format.json { render :show, status: :ok, location: @punctuation }
      else
        format.html { render :edit }
        format.json { render json: @punctuation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punctuations/1
  # DELETE /punctuations/1.json
  def destroy
    @punctuation.destroy
    respond_to do |format|
      format.html { redirect_to punctuations_url, notice: 'Punctuation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punctuation
      @punctuation = Punctuation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punctuation_params
      params.require(:punctuation).permit(:description, :points)
    end
end
