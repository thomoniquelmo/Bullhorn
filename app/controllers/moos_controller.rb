class MoosController < ApplicationController
  before_action :set_moo, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  respond_to :html

  def index
    @moos = Moo.all
    respond_with(@moos)
  end

  def show
    respond_with(@moo)
  end

  def new
    @moo = Moo.new
    respond_with(@moo)
  end

  def edit
  end

  def create
    @moo = Moo.new(moo_params)
    @moo.user_id = current_user.id
    @moo.save
    respond_with(@moo)
  end

  def update
    @moo.update(moo_params)
    respond_with(@moo)
  end

  def destroy
    @moo.destroy
    respond_with(@moo)
  end

  private
    def set_moo
      @moo = Moo.find(params[:id])
    end

    def moo_params
      params.require(:moo).permit(:content, :text)
    end
end
