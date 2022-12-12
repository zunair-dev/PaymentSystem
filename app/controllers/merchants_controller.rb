class MerchantsController < ApplicationController
  def index
    @merchants = Merchant.all
  end

  def show
  end

  def edit
  end
end
