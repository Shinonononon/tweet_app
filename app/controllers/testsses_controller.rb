class TestssesController < ApplicationController
  before_action :set_testss, only: %i[ show edit update destroy ]

  # GET /testsses or /testsses.json
  def index
    @testsses = Testss.all
  end

  # GET /testsses/1 or /testsses/1.json
  def show
  end

  # GET /testsses/new
  def new
    @testss = Testss.new
  end

  # GET /testsses/1/edit
  def edit
  end

  # POST /testsses or /testsses.json
  def create
    @testss = Testss.new(testss_params)

    respond_to do |format|
      if @testss.save
        format.html { redirect_to testss_url(@testss), notice: "Testss was successfully created." }
        format.json { render :show, status: :created, location: @testss }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testsses/1 or /testsses/1.json
  def update
    respond_to do |format|
      if @testss.update(testss_params)
        format.html { redirect_to testss_url(@testss), notice: "Testss was successfully updated." }
        format.json { render :show, status: :ok, location: @testss }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testsses/1 or /testsses/1.json
  def destroy
    @testss.destroy

    respond_to do |format|
      format.html { redirect_to testsses_url, notice: "Testss was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_testss
    @testss = Testss.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def testss_params
    params.require(:testss).permit(:title, :content)
  end
end
