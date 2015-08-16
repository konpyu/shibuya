namespace :dev do
  desc "========="
  task map: :environment do
    Map.create!(name: "ナンペイダイタウン", stuff_id: 1, width_tiles:120, height_tiles: 100)
    Map.create!(name: "サクラガオカタウン", stuff_id: 1, width_tiles:120, height_tiles: 100)
    Map.create!(name: "ドウゲンザカタウン", stuff_id: 1, width_tiles:120, height_tiles: 100)
    Map.create!(name: "ミヤマスザカタウン", stuff_id: 1, width_tiles:120, height_tiles: 100)
    Map.create!(name: "マルヤマタウン", stuff_id: 1, width_tiles:120, height_tiles: 100)
    Map.create!(name: "光の塔", stuff_id: 1, width_tiles:120, height_tiles: 100)
  end

  desc "=========---"
  task serifs: :environment do
    Serif.delete_all
    Serif.create!(text:"あのクソディレクター、企画を決めるのが遅すぎるからすぐ炎上するんだよな。勘弁してほしいわ", stuff_id: 1)
    Serif.create!(text:"合コンしてたら隣にYさんがいてビビったわ〜。マジ狭いすわ〜", stuff_id: 1)
    Serif.create!(text:"光の塔のD&L社が渋谷を統治し始めてからは息苦しくてね。おっといけね", stuff_id: 1)
    Serif.create!(text:"D&L社には巨大な人工知能システムがあって、渋谷に相応しくない人を機械学習で検出してんのよ", stuff_id: 1)
    Serif.create!(text:"隣のビルの社長がドローンとばしたらしいよ。やんちゃだよな", stuff_id: 1)
    Serif.create!(text:"あそこに10億つっこむのはおかしくない?", stuff_id: 1)
    Serif.create!(text:"いくら最近バブルだからってねえ", stuff_id: 1)
    Serif.create!(text:"最近入った新卒どう?", stuff_id: 1)
    Serif.create!(text:"またクラフトビールの店できたの? もう要らないでしょ", stuff_id: 1)
  end
  desc "create sample"
  task mapobj: :environment do
    Mapobject.delete_all
    Mapobject.create!(name: "サイバー社員",      movable: true,  talkable: true )
    Mapobject.create!(name: "第一ほげほげビル",  movable: false, talkable: false)
    Mapobject.create!(name: "街路樹",            movable: false, talkable: false)
    Mapobject.create!(name: "道路A",             movable: false, talkable: false)
    Mapobject.create!(name: "道路（横断歩道）",  movable: false, talkable: false)
    Mapobject.create!(name: "暇そうなDJ",        movable: true,  talkable: true )
    Mapobject.create!(name: "広告代理店営業",    movable: true,  talkable: true )
    Mapobject.create!(name: "読モA",             movable: true,  talkable: true )
    Mapobject.create!(name: "読モB",             movable: false, talkable: true )
    Mapobject.create!(name: "看板",              movable: false, talkable: false)
  end

end
