FactoryBot.define do
  factory :self_test do
    fever { 0 }
    shortness_of_breath { 0 }
    tiredness { 0 }
    cough { 0 }
    sore_throat { 0 }
    vomit { 0 }
    diarrhea { 0 }
    feel_fine { 0 }
    how_long_feeling { 0 }
    diabetes { 0 }
    high_pressure { 0 }
    asthma_bronchitis { 0 }
    heart_disease { 0 }
    chronic_respiratory_disease { 0 }
    chronic_kidney_disease { 0 }
    depression { 0 }
    immunosuppression { 0 }
    other_symptoms { 0 }
    no_additional_symptoms { 0 }
    health_service_unit { 0 }
    clinic { 0 }
    ambulatory { 0 }
    emergency_room { 0 }
    didnt_look_for_help { 0 }
    covid_test { 0 }
    self_test_zip_code { '01001000' }
    result { nil }
    user { nil }
  end
end
