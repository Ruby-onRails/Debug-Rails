class PerriorsController < ApplicationController
  before_action :set_perrior, only: %i[ show edit update destroy ]

  # GET /perriors or /perriors.json
  def index
    @perriors = Perrior.all
  end

  # GET /perriors/1 or /perriors/1.json
  def show
  end

  # GET /perriors/new
  def new
    @perrior = Perrior.new
  end

  # GET /perriors/1/edit
  def edit
  end

  # POST /perriors or /perriors.json
  def create
    @perrior = Perrior.new(perrior_params)

    respond_to do |format|
      if @perrior.save
        format.html { redirect_to @perrior, notice: "Perrior was successfully created." }
        format.json { render :show, status: :created, location: @perrior }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @perrior.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perriors/1 or /perriors/1.json
  def update
    respond_to do |format|
      if @perrior.update(perrior_params)
        format.html { redirect_to @perrior, notice: "Perrior was successfully updated." }
        format.json { render :show, status: :ok, location: @perrior }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @perrior.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perriors/1 or /perriors/1.json
  def destroy
    @perrior.destroy
    respond_to do |format|
      format.html { redirect_to perriors_url, notice: "Perrior was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perrior
      @perrior = Perrior.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def perrior_params
      params.require(:perrior).permit(:title, :content)
    end
end
