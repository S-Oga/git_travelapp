class Travel < ApplicationRecord
    belongs_to :user
    has_many :plans, dependent: :destroy, inverse_of: :travel
    accepts_nested_attributes_for :plans, allow_destroy: true, reject_if: :all_blank
    # has_and_belongs_to_many :prefectures　中間テーブル作成するか、アソシエーション無しで実装可能か見直しが必要！！
    # has_and_belongs_to_many :budgets
end
