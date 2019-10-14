class HireRecordsController < ApplicationController
  before_action :set_hire_record, only: [:show, :edit, :update, :destroy]
  before_action :build_lists, only: [:new, :edit, :update, :create]

  # GET /hire_records
  def index
    @hire_records = HireRecord.all
  end

  # GET /hire_records/1
  def show
  end

  # GET /hire_records/new
  def new
    @hire_record = HireRecord.new
  end

  # GET /hire_records/1/edit
  def edit
  end

  # POST /hire_records
  def create
    @hire_record = HireRecord.new(hire_record_params)

    respond_to do |format|
      if @hire_record.save
        format.html { redirect_to @hire_record, notice: 'Hire record was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /hire_records/1
  def update
    respond_to do |format|
      if @hire_record.update(hire_record_params)
        format.html { redirect_to @hire_record, notice: 'Hire record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /hire_records/1
  def destroy
    @hire_record.destroy
    respond_to do |format|
      format.html { redirect_to hire_records_url, notice: 'Hire record was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hire_record
      @hire_record = HireRecord.find(params[:id])
    end

    def build_lists
      @dc = ['NJ', 'IL', 'GA', 'TX', 'CO']
      @emp_role = ['DRIVER', 'WAREHOUSE']
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hire_record_params
      params.require(:hire_record).permit(:dc, :emp_name, :start_date, :end_date, :emp_role, :rate, :hours, :agency, :overtime, :from_role, :perm_emp)
    end
end
