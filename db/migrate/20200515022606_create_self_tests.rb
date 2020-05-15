class CreateSelfTests < ActiveRecord::Migration[6.0]
  def change
    create_table :self_tests do |t|
      t.integer :fever
      t.integer :shortness_of_breath
      t.integer :tiredness
      t.integer :cough
      t.integer :sore_throat
      t.integer :vomit
      t.integer :diarrhea
      t.integer :feel_fine
      t.integer :how_long_feeling
      t.integer :diabetes
      t.integer :high_pressure
      t.integer :asthma_bronchitis
      t.integer :heart_disease
      t.integer :chronic_respiratory_disease
      t.integer :chronic_kidney_disease
      t.integer :depression
      t.integer :immunosuppression
      t.integer :other_symptoms
      t.integer :no_additional_symptoms
      t.integer :health_service_unit
      t.integer :clinic
      t.integer :ambulatory
      t.integer :emergency_room
      t.integer :didnt_look_for_help
      t.integer :covid_test
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
