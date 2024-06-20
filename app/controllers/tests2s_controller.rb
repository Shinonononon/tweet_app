class Tests2sController < ApplicationController
  before_action :set_tests2, only: %i[ show edit update destroy ]

  # GET /tests2s or /tests2s.json
  def index
    @tests2s = Tests2.all
  end

  # GET /tests2s/1 or /tests2s/1.json
  def show
  end

  # GET /tests2s/new
  def new
    @tests2 = Tests2.new
  end

  # GET /tests2s/1/edit
  def edit
  end

  # POST /tests2s or /tests2s.json
  def create
    @tests2 = Tests2.new(tests2_params)

    respond_to do |format|
      if @tests2.save
        format.html { redirect_to tests2_url(@tests2), notice: "Tests2 was successfully created." }
        format.json { render :show, status: :created, location: @tests2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tests2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests2s/1 or /tests2s/1.json
  def update
    respond_to do |format|
      if @tests2.update(tests2_params)
        format.html { redirect_to tests2_url(@tests2), notice: "Tests2 was successfully updated." }
        format.json { render :show, status: :ok, location: @tests2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tests2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests2s/1 or /tests2s/1.json
  def destroy
    @tests2.destroy

    respond_to do |format|
      format.html { redirect_to tests2s_url, notice: "Tests2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tests2
      @tests2 = Tests2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tests2_params
      params.require(:tests2).permit(:title, :content)
    end
end
