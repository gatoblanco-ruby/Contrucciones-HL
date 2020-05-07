class OsosController < ApplicationController

  def show
    @oso = Oso.find(params[:id])
  end

  def new
    @oso = Oso.new
  end

  def create
    @oso = Oso.new(oso_params)    # Not the final implementation!
    if @oso.save
      flash[:success] = "Vienvenido a Hl Contruccion"
      redirect_to @oso
    else
      render 'new'
    end
  end
  
  private
  def oso_params
    params.require(:oso).permit(:name, :email, :password, :password_confirmation)
  end

end