module PublicActivity
  # Handles creation of Activities upon destruction and update of tracked model.
  module Update
    extend ActiveSupport::Concern

    included do
      after_update { binding.pry; create_activity :update }
    end
  end
end
