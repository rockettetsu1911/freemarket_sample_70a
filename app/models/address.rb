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

  enum prefecture:{
    '---':         0,
    #東北地方
    hokkaido: 1, aomori: 2, iwate: 3,  miyagi: 4, akita: 5, fukushima: 6,

    #関東地方
    ibaraki: 7,  tochigi: 8, gunma: 9, saitama: 10, chiba: 11, tokyo: 12, kanagawa: 13,

    #東海地方
    nigata: 14, toyama: 15, ishikawa: 16, fukui: 17, yamanashi: 18, nagano:   19,
    gifu:   20, sizuoka:   21, aichi: 22,

    #近畿地方
    mie: 23, shiga: 24, kyoto: 25, osaka: 26, hyogo: 27, nara: 28, wakayama: 29,

    #中国地方
    totori: 30, shimane: 31, okayama: 32, hiroshima: 33, yamaguchi: 34,

    #四国地方
    tokushima: 35, kagawa: 36, ehime: 37, kochi: 38,

    #九州地方
    fukuoka: 39, saga: 40, nagasaki: 41, kumamoto: 42, oita: 43,
    miyazaki: 44, kagoshima: 45, okinawa:  46
  }

end
