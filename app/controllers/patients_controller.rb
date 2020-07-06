class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end
    
    def new
        @patient = Patient.new
        #@recipe.ingredients.build
    end
    
    def create
        Patient.create(patient_params)
        redirect_to patients_path
    end
    
      private
    
      def patient_params
        params.require(:patient).permit(:name, :age)
      end
end
