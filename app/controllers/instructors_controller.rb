class InstructorsController < ApplicationController
  before_action :set_instructor, only: %i[ show edit update destroy ]
  def index
    @instructors = Instructor.all
  end

  def show
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      redirect_to @instructor
    else
      render :new, status: :unprocessible_entity
    end
  end

  def edit
  end

  def update
    if @instructor.update(instructor_params)
      redirect_to @instructor
    else
      render :edit, status: :unprocessible_entity
    end
  end

  def destroy
    @instructor.destroy
    redirect_to instructors_path
  end

  private
  def set_instructor
    @instructor = Instructor.find(params[:id])
  end

  def instructor_params
    params.expect(instructor: [ :fullname, :experience, :qualification ])
  end
end
