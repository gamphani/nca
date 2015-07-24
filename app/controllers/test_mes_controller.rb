class TestMesController < ApplicationController
  before_action :set_test_me, only: [:show, :edit, :update, :destroy]

  # GET /test_mes
  # GET /test_mes.json
  def index
    @test_mes = TestMe.all
  end

  # GET /test_mes/1
  # GET /test_mes/1.json
  def show
  end

  # GET /test_mes/new
  def new
    @test_me = TestMe.new
  end

  # GET /test_mes/1/edit
  def edit
  end

  # POST /test_mes
  # POST /test_mes.json
  def create
    @test_me = TestMe.new(test_me_params)

    respond_to do |format|
      if @test_me.save
        format.html { redirect_to @test_me, notice: 'Test me was successfully created.' }
        format.json { render :show, status: :created, location: @test_me }
      else
        format.html { render :new }
        format.json { render json: @test_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_mes/1
  # PATCH/PUT /test_mes/1.json
  def update
    respond_to do |format|
      if @test_me.update(test_me_params)
        format.html { redirect_to @test_me, notice: 'Test me was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_me }
      else
        format.html { render :edit }
        format.json { render json: @test_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_mes/1
  # DELETE /test_mes/1.json
  def destroy
    @test_me.destroy
    respond_to do |format|
      format.html { redirect_to test_mes_url, notice: 'Test me was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_me
      @test_me = TestMe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_me_params
      params.require(:test_me).permit(:me)
    end
end
