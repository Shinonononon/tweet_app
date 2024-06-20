class Post < ApplicationRecord
  validates :title, length: {
  in: 1..20,
too_long: '20字以内で入力してください',
too_short: '何かしら入力してください', }
  validates :content, length: {
    in: 1..140,
    too_long: '140文字以内で入力してください。',
    too_short: '何かしら入力してください。',
  }
end
