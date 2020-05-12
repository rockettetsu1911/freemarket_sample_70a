class Address < ApplicationRecord

  belongs_to :user

  VALID_ZIP_CODE_REGEX = /\A\d{7}\z/
  # ハイフンなし、7桁
  validates :zip_code, format: { with: VALID_ZIP_CODE_REGEX }

  validates :dest_first_name, :dest_last_name, :dest_first_name_kana, :dest_last_name_kana,
            :zip_code, :prefecture, :city, :block_number,  
            presence: true

  validates :dest_first_name,      presence: { message: "苗字を入力してください" }
  validates :dest_last_name,       presence: { message: "名前を入力してください" }
  validates :dest_first_name_kana, presence: { message: "苗字の読み仮名を入力してください" }
  validates :dest_last_name_kana,  presence: { message: "名前の読み仮名を入力してください" }
  validates :zip_code,             presence: { message: "郵便番号を入力してください" }
  validates :prefecture,           presence: { message: "都道府県を選択してください" }
  validates :city,                 presence: { message: "市町村名を入力してください" }
  validates :block_number,         presence: { message: "番地を入力してください" }

end
