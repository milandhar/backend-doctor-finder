class DoctorsController < ApplicationController
    before_action :set_doctor, :only: [:show, :edit, :update, :destroy]
    def index
        @doctors = Doctor.all
        render json: @doctors 
    end

    def new 
        @doctor = Doctor.new 
        respond_to do |format|
            if @doctor.save
                format.html { redirect_to @doctor, notice: 'doctor was successfully created.' }
                format.json { render :show, status: :created, location: @doctor }
              else
                format.html { render :new }
                format.json { render json: @doctor.errors, status: :unprocessable_entity }
              end
            end
        end 
    end

    def create 
        @doctor = Doctor.new(doctor_params) 
        respond_to do |format|
            if @doctor.save
                format.html { redirect_to @doctor, notice: 'doctor was successfully created.' }
                format.json { render :show, status: :created, location: @doctor }
              else
                format.html { render :new }
                format.json { render json: @doctor.errors, status: :unprocessable_entity }
              end
            end
        end 
    end

    private 
    def set_doctor
        @doctor = Doctor.find(params[:id])
    end
    def doctor_params
        params.require(:doctor).permit(
            :first_name,
            :last_name,  
            :insurance_uids, 
            :specialty_uids, 
            :practice_uids,
            :practice_name,
            :image_url, 
            :address
            )
      end
    
end
