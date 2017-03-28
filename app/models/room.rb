class Room < ApplicationRecord
	AREA = [["狩人の夢", "狩人の夢"], ["ヤーナム市街", "ヤーナム市街"], ["大橋", "大橋"], ["ガスコイン神父霧前", "ガスコイン神父霧前"], ["ヤーナム聖堂街", "ヤーナム聖堂街"], ["大聖堂", "大聖堂"], ["聖堂街　上層", "聖堂街　上層"], ["星界からの使者霧前", "星界からの使者霧前"], ["エーブリエタース霧前", "エーブリエタース霧前"], ["旧市街", "旧市街"], ["地下牢", "地下牢"], ["パール霧前", "パール霧前"], ["ヘムウィックの墓地街", "ヘムウィックの墓地街"], ["ヘムウィックの魔女霧前", "ヘムウィックの魔女霧前"], ["禁域の森", "禁域の森"], ["ヤーナムの影霧前", "ヤーナムの影霧前"], ["ビルゲンワース", "ビルゲンワース"], ["隠し街ヤハグル", "隠し街ヤハグル"], ["ヤハグル教会", "ヤハグル教会"], ["廃城カインハースト", "廃城カインハースト"], ["悪夢の辺境", "悪夢の辺境"], ["アメンドーズ霧前", "アメンドーズ霧前"], ["メンシスの悪夢", "メンシスの悪夢"], ["メルゴーの高楼 ふもと", "メルゴーの高楼 ふもと"], ["メルゴーの高楼 中腹", "メルゴーの高楼 中腹"], ["メルゴーの乳母霧前", "メルゴーの乳母霧前"], ["狩人の悪夢", "狩人の悪夢"], ["悪夢の教会", "悪夢の教会"], ["地下死体溜り", "地下死体溜り"], ["醜い獣、ルドウイーク霧前", "醜い獣、ルドウイーク霧前"], ["実験棟", "実験棟"], ["失敗作たち霧前", "失敗作たち霧前"], ["時計塔のマリア霧前", "時計塔のマリア霧前"], ["漁村", "漁村"], ["灯台脇の小屋", "灯台脇の小屋"], ["ゴースの遺子霧前", "ゴースの遺子霧前"]]
	has_many :comments , dependent: :delete_all	
	default_scope -> { order(created_at: :desc) }
	validates :title, presence: true , length: { maximum: 20 }
	validates :content, length: { maximum: 140 }
end
