class SelfTestsController < ApplicationController
  before_action :authenticate_user!

  def new
    @self_test = SelfTest.new
  end

  def create
    @self_test = SelfTest.new(self_test_params)
    return redirect_to results_path if @self_test.save

    render :new
  end

  private

  def self_test_params
    params.require(:self_test).permit(:fever, :shortness_of_breath, :tiredness, :cough, :sore_throat, :vomit, :diarrhea, :feel_fine, :how_long_feeling, :diabetes, :high_pressure, :asthma_bronchitis, :heart_disease, :chronic_respiratory_disease, :chronic_kidney_disease,
    :depression, :immunosuppression, :other_symptoms, :no_additional_symptoms, :health_service_unit, :clinic,
    :ambulatory, :emergency_room, :didnt_look_for_help, :covid_test).merge(user_id: current_user.id)
  end
end
