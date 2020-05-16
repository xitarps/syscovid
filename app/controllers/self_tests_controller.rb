class SelfTestsController < ApplicationController
  before_action :authenticate_user!

  def new
    @self_test = SelfTest.new
  end

  def create
    @self_test = SelfTest.new(self_test_params)
    @self_test.result = add_result_to_self_test
    return redirect_to results_path if @self_test.save

    render :new
  end

  private

  def self_test_params
    params
      .require(:self_test)
      .permit(:fever, :shortness_of_breath, :tiredness, :cough, :sore_throat,
              :vomit, :diarrhea, :feel_fine, :how_long_feeling, :diabetes,
              :high_pressure, :asthma_bronchitis, :heart_disease,
              :chronic_respiratory_disease, :chronic_kidney_disease,
              :depression, :immunosuppression, :other_symptoms,
              :no_additional_symptoms, :health_service_unit, :clinic,
              :ambulatory, :emergency_room, :didnt_look_for_help,
              :covid_test).merge(user_id: current_user.id, result: nil)
  end

  def self_test_alert_fine
    return '' if @self_test.nil?
    return 0 if @self_test.feel_fine == 1

    1
  end

  def self_test_alert_attention
    return '' if @self_test.nil?
    return 1 if @self_test.no_additional_symptoms == 1
    return 1 if @self_test.didnt_look_for_help == 1
    return 1 if @self_test.covid_test == 2

    0
  end

  def self_test_alert_critical
    return '' if @self_test.nil?

    is_critical = 0
    is_critical += 1 if @self_test.fever == 1
    is_critical += 1 if @self_test.shortness_of_breath == 1
    is_critical += 1 if @self_test.tiredness == 1
    return 2 if is_critical == 3

    0
  end

  def self_test_result
    return 2 if self_test_alert_critical == 2
    return 1 if self_test_alert_attention == 1
    return 0 if self_test_alert_fine.to_i.zero?

    1
  end

  def add_result_to_self_test
    self_test_result
  end
end
