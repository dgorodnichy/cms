class Section < ApplicationRecord
  belongs_to :page
  has_many :attachments_sections, class_name: 'AttachmentsSections'
  has_many :attachments, through: :attachments_sections
end
