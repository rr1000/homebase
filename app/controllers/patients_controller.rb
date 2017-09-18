class PatientsController < ApplicationController
  before_action :find_patient, only: [:edit, :update, :show, :delete]

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new
    if @patient.save(patient_params)
      flash[:notice] = "Successfully created patient!"
      redirect_to patient_path(@patient)
    else
      flash[:alert] = "Error creating new patient!"
      render :new
    end
  end

  def edit
  end

  def update
    if @patient.update_attributes(patient_params)
      flash[:notice] = "Successfully updated patient!"
      redirect_to patient_path(@patients)
    else
      flash[:alert] = "Error updating patient!"
      render :edit
    end
  end

  def show
  end

  def destroy
    if @patient.destroy
      flash[:notice] = "Successfully deleted patient!"
      redirect_to patients_path
    else
      flash[:alert] = "Error updating patient!"
    end
  end

  private
    def patient_params
      params.require(:patient).permit(:title, :body)
    end

    def find_patient
      @patient = Patient.find(params[:id])
    end
end
