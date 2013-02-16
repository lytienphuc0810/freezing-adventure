class RecordsController < ActionController::Base
	before_filter :authenticate_user!
  layout "application"

	def index
		@records = Record.all
	end

	def show
		@current_counter = Integer params[:id]
		@records = Record.nth_latest_records( @current_counter )	
	end
	
	def new
		if @record.nil?
			@record = Record.new 
		end
	end

	def create
		@record = Record.new(params[:record].merge({:date => Date.today}))
		if @record.valid?
			@record.save
			redirect_to "/records"
		else
			render :action => "new"
		end
	end

	def edit
		@record = Record.find(params[:id])
	end

	def update
		@record = Record.find(params[:id])
		@record.update_attributes(params[:record])
		redirect_to "/records"
	end

	def destroy 
		@record = Record.find(params[:id])
		@record.destroy
		redirect_to "/records"
	end
end
