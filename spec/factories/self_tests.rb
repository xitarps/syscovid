FactoryBot.define do
  factory :self_test do
    fever { 1 }
    shortness_of_breath { 1 }
    tiredness { 1 }
    cough { 1 }
    sore_throat { 1 }
    vomit { 1 }
    diarrhea { 1 }
    feel_fine { 1 }
    how_long_feeling { 1 }
    diabetes { 1 }
    high_pressure { 1 }
    asthma_bronchitis { 1 }
    heart_disease { 1 }
    chronic_respiratory_disease { 1 }
    chronic_kidney_disease { 1 }
    depression { 1 }
    immunosuppression { 1 }
    other_symptoms { 1 }
    no_additional_symptoms { 1 }
    health_service_unit { 1 }
    clinic { 1 }
    ambulatory { 1 }
    emergency_room { 1 }
    didnt_look_for_help { 1 }
    covid_test { 1 }
    user { nil }
  end
end
