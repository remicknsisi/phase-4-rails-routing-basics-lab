class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        students = Student.all.order(grade: :desc)
        render json: students
    end
end
