class ResultsController < ApplicationController
  before_action :authenticate_user!
  def index
    find_user_self_test

    @alert = define_message
    @alert_color = define_message_color
  end

  private

  def find_user_self_test
    @user = User.find(current_user.id)
    @self_test = @user.self_tests.last
  end

  def define_message
    return t(ops_something_wrong) if @self_test.nil?
    return t(:alert_fine) if @self_test.result.to_i.zero?
    return t(:alert_attention) if @self_test.result == 1
    return t(:alert_critical) if @self_test.result == 2
  end

  def define_message_color
    return 'grey-text text-darken-3' if @self_test.nil?
    return 'green-text text-accent-4' if @self_test.result.to_i.zero?
    return 'orange-text text-accent-3' if @self_test.result == 1
    return 'deep-orange-text text-accent-3' if @self_test.result == 2
  end
end
