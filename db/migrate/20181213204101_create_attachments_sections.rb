class CreateAttachmentsSections < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments_sections do |t|
      t.belongs_to :section, index: true
      t.belongs_to :attachment, index: true
    end
  end
end
