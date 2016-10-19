module CustomOrder
  extend ActiveSupport::Concern

  included do
    scope :latest, ->{where created_at: :desc}
    scope :sort_by_title, ->{where title: :asc}
  end
end
