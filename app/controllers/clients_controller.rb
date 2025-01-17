class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show edit update ]
  
  def index
    @clients = Client.all
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client
    else
      render :new, status: :unprocessible_entity
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to @client
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.expect(client: [ :fullname, :birthday, :phone, :email ])
    end
end
