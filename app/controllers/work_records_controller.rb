class WorkRecordsController < ActionController::Base
  before_action :authenticate_user!

  def index

  end

  def order_params
    params.require(:work_record).permit(:order_ordernumber, :text, :user_name, :hours)
  end
end
