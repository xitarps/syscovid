class MonitoringsController < ApplicationController
  before_action :authenticate_user!
  def show
    @alert = define_zip_code_color
  end

  private

  def define_zip_code_color
    return 'not_enough' if number_of_cases_in_zip_code <= 1
    return 'green' if number_of_cases_in_zip_code <= 10
    return 'yellow' if number_of_cases_in_zip_code <= 15
    return 'red' if number_of_cases_in_zip_code > 30
  end

  def number_of_cases_in_zip_code
    SelfTest
      .where(created_at: (Time.zone.today - 7)..(DateTime.now))
      .where(self_test_zip_code: current_user.user_zip_code)
      .where(result: 1..2)
      .find_each(batch_size: 1000).count
  end
end
