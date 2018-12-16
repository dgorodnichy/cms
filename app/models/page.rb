class Page < ApplicationRecord
  has_many :sections
  accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
end

# 1. Каждая секция имеет markdown и attachments
# 2. У секции есть тип(cell) который её рендерит в нужном виде
# 3. Аттачменты к секциям - многие ко многим
# 4. Новая секция это форма с выбором темплейта, окном с маркдауном и кнопкой для аттачментов
# 5. При нажаттии на кнопку аттачментов появляется модалка со всеми аттачментами, выбираем нужные и жмем ок.
