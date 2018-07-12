class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    if @student === inactive
      @student.active
    else
      @student.active
      @student.save

    end
  end

  private

    def set_student
    end
end
