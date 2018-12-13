class AttachmentsSections < ApplicationRecord
  belongs_to :attachment
  belongs_to :section
end
