class PersonalTrainingsController < ApplicationController
  before_action :set_training, only: %i[ show edit update destroy ]
  def index
    @personal_trainings = PersonalTraining.all
  end

  def show
    puts params.expect
  end

  def new
    @personal_training = PersonalTraining.new
    @clients = Client.all
    @instructors = Instructor.all
  end

  def create
    @personal_training = PersonalTraining.new(personal_training_params)
    if @personal_training.save
      redirect_to @personal_training
    else
      render :new, status: :unprocessible_entity
    end
  end

  def edit
  end

  def update
    if @personal_training.update(personal_training_params)
      redirect_to @personal_training
    else
      render :edit, status: :unprocessible_entity
    end
  end

  def destroy
    @personal_training.destroy
    redirect_to personal_trainings_path
  end

  private
  def set_training
    @personal_training = PersonalTraining.find(params[:id])
  end

  def personal_training_params
    params.expect(personal_training: [ :client_id, :instructor_id, :price, :duration, :schedule ])
  end
end
