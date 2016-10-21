class JavascriptLearningsController < ApplicationController
  before_action :set_javascript_learning, only: [:show, :edit, :update, :destroy]

  # GET /javascript_learnings
  # GET /javascript_learnings.json
  def index
    @javascript_learnings = JavascriptLearning.all
    @order_params = "desc"
    p "*** I have set the order_params = #{@order_params}"
  end

  # GET /javascript_learnings/1
  # GET /javascript_learnings/1.json
  def show
  end

  # GET /javascript_learnings/new
  def new
    @javascript_learning = JavascriptLearning.new
    # @countries = Customer.all
    @countries = JavascriptLearning.aasm.states
    p "** #{@countries.inspect}"
   end

  # GET /javascript_learnings/1/edit
  def edit
    @countries = JavascriptLearning.aasm.states
  end

  # POST /javascript_learnings
  # POST /javascript_learnings.json
  def create
    @javascript_learning = JavascriptLearning.new(javascript_learning_params)
    p " #{@javascript_learning.inspect}"
    respond_to do |format|
      if @javascript_learning.save!
        format.html { redirect_to javascript_learnings_url, notice: 'Javascript learning was successfully created.' }
        format.json { render :show, status: :created, location: @javascript_learning }
      else
        p "*** could no save frd"
        format.html { render :new }
        format.json { render json: @javascript_learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /javascript_learnings/1
  # PATCH/PUT /javascript_learnings/1.json
  def update
    respond_to do |format|
      if @javascript_learning.update(javascript_learning_params)
        format.html { redirect_to @javascript_learning, notice: 'Javascript learning was successfully updated.' }
        format.json { render :show, status: :ok, location: @javascript_learning }
      else
        format.html { render :edit }
        format.json { render json: @javascript_learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /javascript_learnings/1
  # DELETE /javascript_learnings/1.json
  def destroy
    @javascript_learning.destroy
    respond_to do |format|
      format.html { redirect_to javascript_learnings_url, notice: 'Javascript learning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def javascript_demos
  end
  def dom_manipulation
  end
  def sorted
    column = params[:id]
    @order = params[:order]
    if @order.eql?("asc")
      p"i am in the if part i received order by params = #{@order}"
      @order_params = "desc"
      p "order_params = #{@order_params}"
    else
      p"i am in the else part i receiver order by params = #{@order}"
      @order_params = "asc"
      p "order_params = #{@order_params}"
    end

    #p "i got them as = #{@javascript_learnings.inspect}"
    @javascript_learnings = JavascriptLearning.all.order("#{column} #{@order}")
    p "i got them as = #{@javascript_learnings.inspect}"
  end 

  def navigation_dropdown
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_javascript_learning
      @javascript_learning = JavascriptLearning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def javascript_learning_params
      params.require(:javascript_learning).permit(:function_name, :description, :maximum, :minimum)
    end
end
