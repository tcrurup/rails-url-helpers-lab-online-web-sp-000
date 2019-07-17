class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
    @student.active ? @student.active = false : @student.active = true
    @student.save
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
