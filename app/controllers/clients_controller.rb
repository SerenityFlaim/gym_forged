class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show edit update destroy trainings]
  rescue_from ActiveRecord::RecordNotUnique, with: :rescue_unique_ex
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
      render :new, status: :unprocessable_entity
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

  def destroy
    @client.destroy
    redirect_to clients_path
  end

  def trainings
    @trainings = @client.personal_trainings
  end

  private
    def rescue_unique_ex(exception)
      @error_message = "The client with the same email already exists"
      puts ("EXCEPTION CATCHED")
      puts (exception.message)
      render :new
    end

    def set_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.expect(client: [ :fullname, :birthday, :phone, :email ])
    end
end
