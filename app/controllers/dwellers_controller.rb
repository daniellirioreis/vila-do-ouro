class DwellersController < ApplicationController
  before_action :set_dweller, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dwellers = Dweller.all
    respond_with(@dwellers)
  end

  def show
    respond_with(@dweller)
  end

  def new
    @dweller = Dweller.new
    respond_with(@dweller)
  end

  def edit
  end

  def create
    @dweller = Dweller.new(dweller_params)
    @dweller.save
    respond_with(@dweller)
  end

  def update
    @dweller.update(dweller_params)
    respond_with(@dweller)
  end

  def destroy
    @dweller.destroy
    respond_with(@dweller)
  end

  private
    def set_dweller
      @dweller = Dweller.find(params[:id])
    end

    def dweller_params
      params.require(:dweller).permit(:name, :email, :phone, :cpf)
    end
end
