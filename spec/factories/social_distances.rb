FactoryBot.define do
  factory :social_distance do
    how_many_residents { 1 }
    residence_type { 1 }
    bedrooms { 1 }
    bathrooms { 1 }
    rooms { 1 }
    many_contacts { 1 }
    been_outdoor { 1 }
    many_times_outdoor { 1 }
    supermarket { 1 }
    pharmacy { 1 }
    health_service { 1 }
    commerce { 1 }
    market { 1 }
    workplace { 1 }
    other_places { 1 }
    public_transportation { 1 }
    many_transportations { 1 }
    bus { 1 }
    subway { 1 }
    train { 1 }
    transport_apps { 1 }
    car { 1 }
    bicycle { 1 }
    taxi { 1 }
    other_transportations { 1 }
    user { nil }
  end
end
