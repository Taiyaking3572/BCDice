# frozen_string_literal: true

module BCDice
  module GameSystem
    class GurpsFW
      DIFFICULTY_ENTRIES = {
        # 洞窟
        1 => {
          12 => [
            ["1", "2", "3", "4"]
          ],
          13 => [
            ["<植物学>か<動植物知識-3>", "<植物学-2>か<動植物知識-5>", "<植物学-4>か<動植物知識-7>", "<植物学-8>か<動植物知識-11>"],
            ["5", "10", "15", "20"],
          ],

          22 => [
            ["<鍵開け-3>", "<鍵開け-5>", "<鍵開け-7>", "<鍵開け-11>"]
          ],
          23 => [
            ["<罠-3>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],
          24 => [
            ["<罠-3><鍵開け-3>", "<罠-5><鍵開け-5>", "<罠-7><鍵開け-7>", "<罠-11><鍵開け-11>"]
          ],
          25 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"],
            ["100", "200", "300", "500"],
          ],
          26 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],

          34 => [
            ["<軽業>", "<軽業-2>", "<軽業-4>", "<軽業-8>"],
            ["3D", "4D", "6D", "10D"],
          ],
          35 => [
            ["HP30", "HP60", "HP90", "HP150"]
          ],
          36 => [
            ["「知力-1」", "「知力-2」", "「知力-3」", "「知力-5」"]
          ],

          41 => [
            ["キャンディークラウン(CL40)", "キャンディークラウン(CL40)「1D-3」匹(最低1匹)", "キャンディークラウン(CL40)「1D-2」匹(最低1匹)、出目が6だった場合ゴールデンクラウン(CL177)1匹", "ゴールデンクラウン(CL177)"]
          ],
          42 => [
            ["ベルセルク(CL7)×3とエンカウント。", "ベルセルク(CL7)×3とエンカウント。", "ベルセルク(CL15)×3とエンカウント、命中+10、ST24、HP+40、FP+8。", "ベルセルク(CL25)×3とエンカウント、命中+20、ST32、HP+90、FP+18。"],
            ["争っていたためHPとFPは半減している", "", "", ""],
          ],
          43 => [
            ["ロックバトラー(CL6)×3とエンカウント。", "ガーゴイル(CL10)×3とエンカウント、【ハイドインシャドウ】を追加。", "ガーゴイル(CL15)×3とエンカウント、以下のように強化。", "ザッハーク(CL39)×2とエンカウント。"],
            ["", "", '
  ----------
  ガーゴイル（ＣＬ１５）　魔族/岩石
  ＳＴ２０　ＤＸ１３　ＩＱ１３　ＨＴ１８　ＨＰ６３　ＦＰ３３
  受防３　防護１８　移動６（飛行）　よけ６　受け８　止め－
  ガーゴイルの戦槌１６（両手メイス）・・・命中２０　３ｄ＋８「叩き」　重量５
  ・ニンジャ
  【ハイドインシャドウ】
  ・グラント
  【グランドインペイル＋３】【エクステンドインペイル】【トルマリンスパーク＋３】
  【チェーンスパーク】【グラビティブレイク＋４】【グラビティパニッシュ】
  ----------', ""],
          ],
          44 => [
            ["デビルホール(CL18)とエンカウント。", "デビルホイール(CL22)とエンカウント、防護点+2、HP+12。", "デビルホイール(CL26)とエンカウント、防護点+4、HP+24。", "ムスペルヘイムの獣(CL65)とエンカウント。"],
            ["5D", "6D", "8D", "12D"],
          ],
          45 => [
            ["3D", "4D", "5D", "6D"],
            ["ヘルハウンド(CL12)、インプ(CL3)×2", "ヘルハウンド(CL12)×2", "フェニックス(CL25)、ヘルハウンド(CL12)×2", "火龍ヘルブレイザー(CL50)、ケルベロス(CL33)"],
          ],
          46 => [
            ["1D", "1D+1", "2D", "3D"],
            ["アイスメイデン(CL10)、アイスリザード(CL7)、スノー(CL3)", "カロン(CL12)×2、アイスメイデン(CL10)", "クリスタルビースト(CL25)×2", "氷龍グレイシャル(CL65)"],
          ],

          52 => [
            ["3ヘクス", "5ヘクス", "7ヘクス", "12ヘクス"],
            ["3D", "5D", "7D", "12D"],
          ],
          53 => [
            ["「生命力-4」", "「生命力-6」", "「生命力-8」", "「生命力-12」"]
          ],
          54 => [
            ["2D", "3D", "5D", "10D"]
          ],
          55 => [
            ["「よけ」", "「よけ-2」", "「よけ-4」", "「よけ-8」"],
            ["5D", "7D", "9D", "15D"],
          ],

          61 => [
            ["<天文学-5>", "<天文学-5>", "<天文学-7>", "<天文学-11>"],
            ["レア装飾品「星の怒り」かレア魔法《彗星》(好きな方)", "レア装飾品「星の怒り」かレア魔法《彗星》(好きな方)", "レア魔法《流星群》", "レア魔法《滅びの矢》"],
          ],
          62 => [
            ["2", "3", "4", "5"]
          ],
          63 => [
            ["7", "9", "11", "15"]
          ],
          64 => [
            ["50", "100", "150", "200"]
          ],
          66 => [
            ["《粉砕3》", "《粉砕4》", "《粉砕6》", "《粉砕10》"],
            ["HP30", "HP60", "HP90", "HP150"],
          ],
        },
        # 遺跡
        2 => {
          12 => [
            ["2D", "3D", "4D", "6D"]
          ],
          13 => [
            ["<錬金術>か<医師-3>", "<錬金術-2>か<医師-5>", "<錬金術-4>か<医師-7>", "<錬金術-8>か<医師-11>"]
          ],
          16 => [
            ["3000GP", "4000GP", "6000GP", "10000GP"],
            ["5000GP", "10000GP", "20000GP", "40000GP"],
            ["8D", "10D", "15D", "20D"],
          ],

          22 => [
            ["<鍵開け-3>", "<鍵開け-5>", "<鍵開け-7>", "<鍵開け-11>"]
          ],
          23 => [
            ["<罠-3>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],
          24 => [
            ["<罠-3><鍵開け-3>", "<罠-5><鍵開け-5>", "<罠-7><鍵開け-7>", "<罠-11><鍵開け-11>"]
          ],
          25 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"],
            ["100", "200", "300", "500"],
          ],
          26 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],

          31 => [
            ["<身振り-3><演技><演劇>", "<身振り-5><演技-2><演劇-2>", "<身振り-7><演技-4><演劇-4>", "<身振り-11><演技-8><演劇-8>"],
          ],
          32 => [
            ["<モンスター知識-5>か<地域知識/カベノソト-3>", "<モンスター知識-7>か<地域知識/カベノソト-5>", "<モンスター知識-9>か<地域知識/カベノソト-7>", "<モンスター知識-13>か<地域知識/カベノソト-11>"],
          ],
          33 => [
            ["に等しい", "×2の", "×3の", "×5の"],
          ],
          34 => [
            ["<登攀>", "<登攀-2>", "<登攀-4>", "<登攀-8>"],
          ],
          35 => [
            ["「敏捷力」", "「敏捷力-2」", "「敏捷力-4」", "「敏捷力-8」"],
            ["6D", "8D", "10D", "15D"],
          ],
          36 => [
            ["「知力-5」", "知力-6", "「知力-7」", "「知力-9」"],
          ],

          41 => [
            ["キャンディークラウン(CL40)", "キャンディークラウン(CL40)「1D-3」匹(最低1匹)", "キャンディークラウン(CL40)「1D-2」匹(最低1匹)、出目が6だった場合ゴールデンクラウン(CL177)1匹", "ゴールデンクラウン(CL177)"]
          ],
          42 => [
            ["ガーゴイル(CL10)とエンカウント", "ガーゴイル(CL15)とエンカウント、以下のように強化", "ザッハーク(CL39)とエンカウント", "ラダマンティスの蛇(CL50)×2とエンカウント、必ず敵の先制攻撃"],
            ["", '
  ----------
  ガーゴイル（ＣＬ１５）　魔族/岩石
  ＳＴ２０　ＤＸ１３　ＩＱ１３　ＨＴ１８　ＨＰ６３　ＦＰ３３
  受防３　防護１８　移動６（飛行）　よけ６　受け８　止め－
  宝石への命中判定ペナルティは－１０
  ガーゴイルの戦槌１６（両手メイス）・・・命中２０　３ｄ＋８「叩き」　重量５
  ・ニンジャ
  行動：【ハイドインシャドウ】　ＦＰ１　姿を消す　「視覚－５」で発見可能
  ・グラント
  行動：【グランドインペイル＋３】＋【エクステンドインペイル＋１】（両手メイス）　ＦＰ１０
  ３Ｄ＋８「叩き」　受動防御無視「よけ」のみ　半径３ヘクス攻撃　射程５
  行動：【トルマリンスパーク＋２】＋【チェーンスパーク】（両手メイス）　ＦＰ７
  ３Ｄ＋８「叩き」　命中もしくは「受け」「止め」時に電撃で２Ｄ＋２の追加ダメージ
  行動：【グラビティブレイク＋２】＋【グラビティパニッシュ】（両手メイス）　ＦＰ７
  ３Ｄ＋１３「叩き」　「荷重レベル＋３」の回避ペナルティ　命中後１ターンペナルティ持続
  ----------', "", ""],
          ],
          43 => [
            ["スターゲイザー(CL10)、ウイングシレイブ(CL4)", "スターゲイザー(CL10)×2、ポイズンリリー(CL7)", "コスモロジスト(CL20)×2、オウルコマンダー(CL18)", "栄光の天使(CL60)、ヴァルキリー(CL20)×2"],
          ],
          44 => [
            ["<文学>か<礼儀作法-3>", "<文学-3>か<礼儀作法-6>", "<文学-6>か<礼儀作法-9>", "<文学-12>か<礼儀作法-15>"],
            ["ヤシャ(CL10)、スケルトン(CL3)×2", "ヤシャ(CL15、ST17、HP43、FP28、命中22に強化)、ゴースト(CL10)×2", "ヤシャ(CL25、ST23、HP63、FP38、命中30に強化)、カロン(CL12)×2", "コンゴウ(CL60)×2"],
          ],
          45 => [
            ["ヘルハウンド(CL12)", "ケルベロス(CL33)", "火龍ヘルブレイザー(CL50)", "煉獄龍バーガトリ(CL100)"],
          ],
          46 => [
            ["ゴーレム(CL12)", "ミスリルゴーレム(CL27)", "アダマンゴーレム(CL45)", "カラクリヒメショウグン(CL75)"],
            ["2D", "3D", "4D", "4D"],
          ],

          51 => [
            ["「よけ」", "「よけ-2」", "「よけ-4」", "「よけ-8」"],
            ["1D+3", "2D+1", "2d+3", "4D"],
            ["「生命力」", "「生命力-2」", "「生命力-4」", "「生命力-8」"],
            ["1D", "2D", "3D", "5D"],
          ],
          52 => [
            ["「生命力-3」", "「生命力-5」", "「生命力-7」", "「生命力-11」"],
          ],
          53 => [
            ["HPを2倍に計算しCLは10とする", "HPを3倍に計算しCLは15とする", "HPを4倍に計算しCLは20とする", "HPを6倍に計算しCLは30とする"],
          ],
          54 => [
            ["「意志」", "「意志-2」", "「意志-4」", "「意志-8」"],
          ],
          56 => [
            ["「現在の深度÷2」以下のCLのモンスター", "「現在の深度」以下のCLのモンスター", "「現在の深度×1.5」以下のCLのモンスター", "CL80以下のモンスター(ネームド以外)"],
          ],

          62 => [
            ["6", "7", "8", "10"],
            ["9", "10", "11", "14"],
            ["12", "13", "14", "16"],
          ],
          64 => [
            ["<医師>か<考古学>", "<医師-2>か<考古学-2>", "<医師-4>か<考古学-4>", "<医師-8>か<考古学-8>"],
          ],
          65 => [
            ["", "", "、ゴールデンクラウン(CL177)", "、ゴールデンクラウン(CL177)×2"],
          ],
          66 => [
            ["30", "60", "90", "150"],
            ["「深度÷2」", "「深度」", "「深度×1.5」", "「深度×2」"],
          ],
        },
        # 断崖
        3 => {
          12 => [
            ["「意志」", "「意志-2」", "「意志-4」", "「意志-7」"],
          ],
          13 => [
            ["2D", "3D", "4D", "6D"],
          ],
          14 => [
            ["1D", "2D", "3D", "5D"],
          ],
          15 => [
            ["500", "1000", "2000", "4000"],
          ],
          16 => [
            ["500", "1000", "2000", "4000"],
          ],

          22 => [
            ["<鍵開け-3>", "<鍵開け-5>", "<鍵開け-7>", "<鍵開け-11>"],
          ],
          23 => [
            ["<罠-3>", "<罠-5>", "<罠-7>", "<罠-11>"],
          ],
          24 => [
            ["<罠-3><鍵開け-3>", "<罠-5><鍵開け-5>", "<罠-7><鍵開け-7>", "<罠-11><鍵開け-11>"],
          ],
          25 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"],
            ["100", "200", "300", "500"],
          ],
          26 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"],
          ],

          31 => [
            ["<登攀>", "<登攀-2>", "<登攀-4>", "<登攀-7>"],
          ],
          32 => [
            ["<運転/アカシックホイール>", "<運転/アカシックホイール-2>", "<運転/アカシックホイール/-4>", "<運転/アカシックホイール-7>"],
          ],
          33 => [
            ["<生存>", "<生存-2>", "<生存-4>", "<生存-7>"],
          ],
          35 => [
            ["<神秘学>", "<神秘学-2>", "<神秘学-4>", "<神秘学-7>"],
          ],
          36 => [
            ["「体力」", "「体力-2」", "「体力-4」", "「体力-8」"],
          ],

          41 => [
            ["キャンディークラウン(CL40)", "キャンディークラウン(CL40)「1D-3」匹(最低1匹)", "キャンディークラウン(CL40)「1D-2」匹(最低1匹)、出目が6だった場合ゴールデンクラウン(CL177)1匹", "ゴールデンクラウン(CL177)"],
          ],
          42 => [
            ["ウイングスレイブ(CL4)×2とエンカウント", "ウイングスレイブ(CL8)×2とエンカウント、致傷力+1、命中+2、HP+8", "ウイングスレイブ(CL12)×2とエンカウント、致傷力+3、命中+6、HP+16", "ガルーダ(CL40)×2とエンカウント"],
          ],
          43 => [
            ["ブラックナイト(CL10)、ソルジャー(CL4)×2、オーク(CL3)", "ブラックナイト(CL10)×2、ハタモト(CL10)、サーバント(CL5)", "サーバントマスター(CL35)、ヘルハウンド(CL12)×2", "ジェネラル(CL55)、サーバントマスター(CL35)、ケルベロス(CL33)"],
          ],
          44 => [
            ["ガーゴイル(CL10)とエンカウント", "ガーゴイル(CL15)とエンカウント、以下のように強化", "ザッハーク(CL39)とエンカウント", "銀河龍ラクテア(CL90)とエンカウント"],
            ["ガーゴイル", "ガーゴイル", "ザッハーク", "銀河龍ラクテア"],
            ["", '
  ----------
  ガーゴイル(CL15)　魔族/岩石
  ST20　DX13　IQ13　HT18　HP63　FP33
  受防3　防護18　移動6(飛行)　よけ6　受け8　止め-
  宝石への命中判定ペナルティは-10
  ガーゴイルの戦槌16(両手メイス)・・・命中20　3D+8「叩き」　重量5
  ・ニンジャ
  行動：【ハイドインシャドウ】　ＦＰ1　姿を消す　「視覚-5」で発見可能
  ・グラント
  行動：【グランドインペイル+3】+【エクステンドインペイル+1】（両手メイス）　FP10
  3D+8「叩き」　受動防御無視「よけ」のみ　半径3ヘクス攻撃　射程5
  行動：【トルマリンスパーク+2】+【チェーンスパーク】(両手メイス)　FP7
  3D+8「叩き」　命中もしくは「受け」「止め」時に電撃で2D+2の追加ダメージ
  行動：【グラビティブレイク+2】＋【グラビティパニッシュ】(両手メイス)　FP7
  3D+13「叩き」　「荷重レベル+3」の回避ペナルティ　命中後1ターンペナルティ持続
  ----------', "", ""],
          ],
          45 => [
            ["カボチャの魔女(CL8)×2とエンカウント", "カボチャの魔女(CL10)×2とエンカウント、《カボチャの雨》の致傷力+1Dされ、生命力-1で気絶判定、HP+2", "カボチャの魔女(CL14)×2とエンカウント、《カボチャの雨》の致傷力+2Dされ生命力-3で気絶判定、HP+6", "カボチャの大魔女(CL35)×2とエンカウント"],
            ["", "", "", '
  ----------
  カボチャの大魔女(CL35)　魔族
  ST11 DX15 IQ20 HT15 HP120 MP160 FP81
  受防1 防護4 移動10(飛行)よけ10 受け- 止め-
  <戦術20>　イニシアチブ値12
  ・ソーサルギア
  《韋駄天》《火炎武器》《氷結武器》《電撃武器》《べたべた》
  《音噴射》《集団誘眠》《粉砕８》
  ・センチュリオン
  イニシ：【ファーストムーブ】(戦術)　FP3 イニシアチブ判定に自動的に勝利
  ・アークメイジ
  ダメージ後：【マナシールド+2】　FP3　HPダメージをMPで肩代わり 1ターンに3回まで
  支援：【ダブルキャスト】　FP5　次の行動ターンに連続で魔法が使用可能
  行動：【テンペスト】　FP7　他の魔法に追加使用　「通常」の魔法や呪術を周囲半径10ヘクスに　CT：シナリオ
  ・オリジナル魔法
  《カボチャの大災厄》(パンプキンカタストロフ)　通常　消費30
  半径5ヘクスの敵味方を区別せず6Dの「叩き」ダメージを与える。
  隙間なく降り注ぐカボチャは回避不可能で、
  1点でもダメージを受けると「生命力-6」判定を行い、失敗すると気絶する
  ----------'],
          ],
          46 => [
            ["フェニックス(CL25)", "フェニックス(CL30)", "フェニックス(CL35)", "煉獄フェニックス(CL85)"],
            ["", "、クチバシの致傷力+2、命中+4、アクセルギア【ディザスタープログラム】を追加", "、クチバシの致傷力+4、命中+8、アクセルギア【ディザスタープログラム】を追加", ""],
          ],

          51 => [
            ["「敏捷力-3」", "「敏捷力-4」", "「敏捷力-5」", "「敏捷力-7」"],
            ["3D+5", "5D+5", "7D+5", "11D+5"],
          ],
          52 => [
            ["<登攀>", "<登攀-2>", "<登攀-4>", "<登攀-7>"],
            ["4D", "6D", "8D", "12D"],
          ],
          53 => [
            ["「敏捷力」", "「敏捷力-2」", "「敏捷力-4」", "「敏捷力-7」"],
            ["", "", "", "判定失敗時さらに最も単価の高い消耗品を自分のヘクスに落とす(拾うには行動消費)"],
          ],
          54 => [
            ["", "", "《べたべた》判定後、『銀糸の甲殻』アルゲントゥム(CL40・ネームド)とエンカウント。", "《べたべた》判定後、『銀糸の甲殻』アルゲントゥム(CL50・ネームド)×2とエンカウント、あらゆる致傷力+2D、命中判定+8。"],
          ],
          55 => [
            ["<生存-3>", "<生存-5>", "<生存-7>", "<生存-11>"],
            ["4D", "5D", "6D", "8D"],
          ],
          56 => [
            ["防護点2、HP80", "防護点4、HP120", "防護点6、HP160", "防護点8、HP320"],
          ],

          61 => [
            ["-2", "-3", "-4", "-6"],
          ],
          62 => [
            ["100", "200", "300", "500"],
          ],
          63 => [
            ["", "", "1Dを2回振って属性決定、2回攻撃で破壊。", "1Dを3回振って属性決定、3回攻撃で破壊。"],
          ],
          64 => [
            ["「ジャンボ串焼き」", "「ジャンボ串焼き」「グラント風香草焼き」のいずれか(選択可能)", "「ジャンボ串焼き」「グラント風香草焼き」「ドラゴンステーキ」のいずれか(選択可能)", "「ジャンボ串焼き」「グラント風香草焼き」「ドラゴンステーキ」「マツザカスペシャル」のいずれか(選択可能)"],
          ],
          65 => [
            ["<植物学><医師><動植物知識-3>", "<植物学-2><医師-2><動植物知識-5>", "<植物学-4><医師-4><動植物知識-7>", "<植物知識-7><医師-7><動植物知識-11>"],
            ["100", "200", "300", "500"],
          ],
          66 => [
            ["「視覚-5」か<武具屋>", "「視覚-7」か<武具屋-2>", "「視覚-9」か<武具屋-4>", "「視覚-13」か<武具屋-7>"],
            ["10000", "20000", "30000", "60000"],
          ],
        },
        # 水辺
        4 => {
          12 => [
            ["1D", "2D", "3D", "5D"],
          ],
          16 => [
            ["<毒物-5>", "<毒物-7>", "<毒物-9>", "<毒物-13>"],
            ["1D", "2D", "3D", "5D"]
          ],

          22 => [
            ["<鍵開け-3>", "<鍵開け-5>", "<鍵開け-7>", "<鍵開け-11>"]
          ],
          23 => [
            ["<罠-3>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],
          24 => [
            ["<罠-3><鍵開け-3>", "<罠-5><鍵開け-5>", "<罠-7><鍵開け-7>", "<罠-11><鍵開け-11>"]
          ],
          25 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"],
            ["100", "200", "300", "500"],
          ],
          26 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],

          31 => [
            ["<生存>", "<生存-2>", "<生存-4>", "<生存-7>"],
          ],
          32 => [
            ["<登攀>か<軽業>", "<登攀-2>か<軽業-2>", "<登攀-4>か<軽業-4>", "<登攀-8>か<軽業-8>"],
          ],
          34 => [
            ["「視覚-5」", "「視覚-6」", "「視覚-7」", "「視覚-11」"],
          ],
          35 => [
            ["「体力-5」", "「体力-6」", "「体力-7」", "「体力-9」"],
          ],
          36 => [
            ["<船乗り-3>", "<船乗り-5>", "<船乗り-7>", "<船乗り-11>"],
          ],

          41 => [
            ["キャンディークラウン(CL40)", "キャンディークラウン(CL40)「1D-3」匹(最低1匹)", "キャンディークラウン(CL40)「1D-2」匹(最低1匹)、出目が6だった場合ゴールデンクラウン(CL177)1匹", "ゴールデンクラウン(CL177)"]
          ],
          42 => [
            ["アシガル(CL4)×2、アイスリザード(CL7)", "ハタモト(CL10)×2、アイスリザード(CL7)", "ナイトライダー(CL15)×2、アイスメイデン(CL10)", "スカーレス(CL38)×3"],
          ],
          43 => [
            ["アンブッシュマン(CL5)×3とエンカウント", "アンブッシュマン(CL9)×3とエンカウント、致傷力+2、命中+4、HP+8、FP+4", "アンブッシュマン(CL13)×3とエンカウント、致傷力+4、命中+8、HP16、FP+8", "シャドウストーカー(CL35)×2とエンカウント"],
            ["「視覚-5」", "「視覚-5」", "「視覚-5」", "「視覚-9」"],
          ],
          44 => [
            ["アップルドール(CL12)", "アップルドール(CL12)×2", "アップルドール(CL12)×2とポイズンリリー(CL7)×2", "水陸両用改造型アップルドール(CL30)×2とバリアリーフ(CL27)"],
          ],
          45 => [
            ["ジェルスケルトン(CL10)とエンカウント", "ジェルスケルトン(CL15)とエンカウント、ST21、命中+2、防護6、HP+15、FP+10", "ジェルスケルトン(CL20)とエンカウント、ST25、命中+4、防護8、HP+30、FP+20", "ジェルスケルトン(CL40)とエンカウント、ST45、命中+12、防護12、HP+90、FP+60"],
          ],
          46 => [
            ["ナイトライダー(CL15)とエンカウント", "ナイトライダー(CL15)×2とエンカウント", "ナイトライダー(CL15)×2、バリアリーフ(CL27)とエンカウント", "ジェネラル(CL55)、バリアリーフ(CL27)とエンカウント、ジェネラルはペット「スワンプランナー」に<乗馬20>で騎乗、移動8"],
          ],

          51 => [
            ["「意志-3」", "「意志-4」", "「意志-5」", "「意志-7」"],
          ],
          52 => [
            ["<水泳>", "<水泳-2>", "<水泳-4>", "<水泳-8>"],
            ["8D", "10D", "12D", "20D"],
          ],
          53 => [
            ["「よけ」", "「よけ-2」", "「よけ-4」", "「よけ-8」"],
            ["4D", "6D", "8D", "12D"],
          ],
          54 => [
            ["<武具屋>", "<武具屋-2>", "<武具屋-4>", "<武具屋-8>"],
            ["-2", "-3", "-4", "-6"],
          ],
          55 => [
            ["「生命力」", "「生命力-2」", "「生命力-4」", "「生命力-8」"],
            ["1D", "2D", "3D", "5D"],
          ],
          56 => [
            ["<地質学>か「聴覚-7」", "<地質学-2>か「聴覚-9」", "<地質学-4>か「聴覚-11」", "<地質学-8>か「聴覚-15」"],
            ["5D", "7D", "9D", "13D"],
          ],

          61 => [
            ["スワンプランナー", "スワンプランナー", "スワンプランナー", "ゴールデンコーン"],
            ["<応急処置-4>か<獣医>", "<応急処置-4>か<獣医>", "<応急処置-4>か<獣医>", "<応急処置-10>か<獣医-6>"],
          ],
          62 => [
            ["<釣り-5>", "<釣り-7>", "<釣り-9>", "<釣り-13>"],
            ["3000", "6000", "9000", "18000"],
          ],
          63 => [
            ["<歌唱-3>か<作詞>", "<歌唱-5>か<作詞-2>", "<歌唱-7>か<作詞-4>", "<歌唱-11>か<作詞-8>"],
            ["2D", "3D", "4D", "6D"],
          ],
          64 => [
            ["<釣り20>", "<釣り22>", "<釣り24>", "<釣り28>"],
          ],
          65 => [
            ["<探索-3>", "<探索-5>", "<探索-7>", "<探索-11>"],
            ["100", "200", "300", "500"],
          ],
          66 => [
            ["<動植物知識>", "<動植物知識-2>", "<動植物知識-4>", "<動植物知識-8>"],
            ["1000", "2000", "3000", "5000"],
          ],
        },
        # 森林
        5 => {
          13 => [
            ["2D", "3D", "4D", "6D"],
          ],
          16 => [
            ["<植物学-3>か<動植物知識-5>", "<植物学-5>か<動植物知識-7>", "<植物学-7>か<動植物知識-9>", "<植物学-11>か<動植物知識-13>"],
            ["3D", "4D", "6D", "9D"],
          ],

          22 => [
            ["<鍵開け-3>", "<鍵開け-5>", "<鍵開け-7>", "<鍵開け-11>"]
          ],
          23 => [
            ["<罠-3>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],
          24 => [
            ["<罠-3><鍵開け-3>", "<罠-5><鍵開け-5>", "<罠-7><鍵開け-7>", "<罠-11><鍵開け-11>"]
          ],
          25 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"],
            ["100", "200", "300", "500"],
          ],
          26 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],

          31 => [
            ["<生存>", "<生存-2>", "<生存-4>", "<生存-8>"],
          ],
          32 => [
            ["<考古学>", "<考古学-2>", "<考古学-4>", "<考古学-8>"],
          ],
          34 => [
            ["「生命力」", "「生命力-2」", "「生命力-4」", "「生命力-8」"],
            ["1D", "2D", "3D", "5D"],
          ],
          36 => [
            ["2D", "3D", "4D", "6D"],
          ],

          41 => [
            ["キャンディークラウン(CL40)", "キャンディークラウン(CL40)「1D-3」匹(最低1匹)", "キャンディークラウン(CL40)「1D-2」匹(最低1匹)、出目が6だった場合ゴールデンクラウン(CL177)1匹", "ゴールデンクラウン(CL177)"]
          ],
          42 => [
            ["スターゲイザー(CL10)、オーク(CL3)×3", "スターゲイザー(CL10)、ヘルハウンド(CL12)×2", "コスモロジスト(CL20)、ナイトライダー(CL15)×2", "サーバントマスター(CL35)、ガルーダ(40)×2"],
            ["オーク", "ヘルハウンド", "ナイトライダー", "ガルーダ"],
            ["スターゲイザーのMPを15点", "スターゲイザーのMPを10点", "コスモロジストのMPを10点", "サーバントマスターのMPを10点"],
          ],
          43 => [
            ["オウルセイージ(CL5)×2、インプ(CL3)、オーク(CL3)", "オウルセージ(CL5)×3、キメラ(CL15)", "オウルコマンダー(CL18)×2、ブラックナイト(CL10)×2", "オウルコマンダー(CL18)×2、ヨウコ(CL30)、アダマンゴーレム(CL45)"],
            ["2", "3", "4", "6"],
          ],
          44 => [
            ["ｇールデンビースト(CL10)とエンカウント", "ゴールデンビースト(CL15)とエンカウント、致傷力+2、命中+4、HP+10、FP+10", "ゴールデンビースト(CL25)とエンカウント、致傷力+4、命中+10、HP+30、FP+30", "イビルオーメン(CL42)×2とエンカウント"],
          ],
          45 => [
            ["アップルドール(CL12)、ポイズンリリー(CL7)", "アップルドール(CL12)×2、ポイズンリリー(CL7)", "水陸両用改造型アップルドール(CL30)、グリーンアクトレス(CL22)", "水陸両用改造型アップルドール(CL30)×2、リッチ(CL44)"],
            ["<忍び>", "<忍び-1>", "<忍び-2>", "<忍び-4>"],
          ],
          46 => [
            ["キメラ(CL15)とエンカウント", "キメラ(CL20)とエンカウント、防護+2、致傷力+2、命中+4、HP+20、FP+10", "防護+4、致傷力+6、命中+10、HP+60、FP+30", "キメラグレート(CL60)とエンカウント"],
          ],

          51 => [
            ["<毒物><植物学><動植物知識-3>", "<毒物-2><植物学-2><動植物知識-5>", "<毒物-4><植物学-4><動植物知識-7>", "<毒物-8><植物学-8><動植物知識-11>"],
          ],
          52 => [
            ["2D", "3D", "4D", "5D"],
          ],
          53 => [
            ["2D", "4D", "6D", "10D"],
            ["「体力-5」", "「体力-7」", "「体力-9」", "「体力-13」"],
            ["<罠-5>", "<罠-7>", "<罠-9>", "<罠-13>"],
          ],
          54 => [
            ["1D", "2D", "3D", "5D"],
            ["「生命力」", "「生命力-2」", "「生命力-4」", "「生命力-8」"],
          ],
          55 => [
            ["<植物学>か<動植物知識-3>", "<植物学-2>か<動植物知識-5>", "<植物学-2>か<動植物知識-5>", "<植物学-2>か<動植物知識-5>"],
            ["3D", "5D", "7D", "11D"],
          ],
          56 => [
            ["「生命力」", "「生命力-2」", "「生命力-4」", "「生命力-8」"],
            ["1", "2", "3", "4"],
          ],

          62 => [
            ["<踊り>", "<踊り-2>", "<踊り-4>", "<踊り-8>"],
            ["200", "400", "600", "1000"],
          ],
          63 => [
            ["<偽装-5>", "<偽装-9>", "<偽装-13>", "<偽装-19>"],
            ["狩人の羽帽子", "緊急召喚の宝珠", "毒の香水瓶", "女王の花冠"],
          ],
          64 => [
            [
              '1:高級クイックHPポーション
            2:高級クイックMPポーション
            3:高級クイックスタミナポーション
            4:クイック解毒ポーション
            5:クイック中和ポーション
            6:高級抵抗ポーション',
              '1:高級クイックHPポーション
            2:高級クイックMPポーション
            3:高級クイックスタミナポーション
            4:クイック解毒ポーション
            5:クイック中和ポーション
            6:高級抵抗ポーション',
              '1:高級クイックHPポーション
            2:最高級クイックMPポーション
            3:最高級クイックスタミナポーション
            4:加速ポーション
            5:加速ポーション
            6:最高級抵抗ポーション',
              '1:特製クイックHPポーション
            2:特製クイックHPポーション
            3:特製クイックMPポーション
            4:特製クイックMPポーション
            5:特製クイックスタミナポーション
            6:特製クイックスタミナポーション'
            ],
          ],
        },
        # 墓地
        6 => {
          12 => [
            ["2D", "3D", "4D", "6D"],
            ["1D", "3D", "5D", "8D"],
          ],
          13 => [
            ["2D", "3D", "4D", "6D"],
          ],
          15 => [
            ["1000", "2000", "3000", "5000"],
          ],

          22 => [
            ["<鍵開け-3>", "<鍵開け-5>", "<鍵開け-7>", "<鍵開け-11>"]
          ],
          23 => [
            ["<罠-3>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],
          24 => [
            ["<罠-3><鍵開け-3>", "<罠-5><鍵開け-5>", "<罠-7><鍵開け-7>", "<罠-11><鍵開け-11>"]
          ],
          25 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"],
            ["100", "200", "300", "500"],
          ],
          26 => [
            ["<罠-5>", "<罠-5>", "<罠-7>", "<罠-11>"]
          ],

          31 => [
            ["「視覚-5」", "「視覚-7」", "「視覚-9」", "「視覚-13」"],
          ],
          33 => [
            ["<生存>", "<生存-2>", "<生存-4>", "<生存-8>"],
            ["2", "4", "6", "10"],
          ],
          36 => [
            ["-1", "-2", "-3", "-4"],
          ],

          41 => [
            ["キャンディークラウン(CL40)", "キャンディークラウン(CL40)「1D-3」匹(最低1匹)", "キャンディークラウン(CL40)「1D-2」匹(最低1匹)、出目が6だった場合ゴールデンクラウン(CL177)1匹", "ゴールデンクラウン(CL177)"]
          ],
          42 => [
            ["スケルトン(CL3)×3とエンカウント", "スケルトン(CL3)×6とエンカウント、致傷力+2、命中+2", "デッドリーローズ(CL15)×3とエンカウント、スケルトン化しており「叩きダメージボーナス2倍」を追加", "堕ちた黒竜(CL48)×3とエンカウント、スケルトン化しており「叩きダメージボーナス2倍」を追加"],
          ],
          43 => [
            ["ポイズンリリー(CL7)、ファントム(CL5)×2", "ポイズンリリー(CL7)、ゴースト(CL10)×2", "グリーンアクトレス(CL22)、デュラハン(CL22)×2", "グリーンアクトレス(CL22)、ヒトキリ(CL33)×2"],
            ["ポイズンリリー", "ポイズンリリー", "グリーンアクトレス", "グリーンアクトレス"],
            ["1", "2", "3", "4"],
          ],
          44 => [
            ["「保険」に入っていなければPC達は死亡し、グレイヴディガーの配下にさせられてしまう。冒険はここで終了だ。", "「保険」に入っていなければPC達は死亡し、グレイヴディガーの配下にさせられてしまう。冒険はここで終了だ。", "「保険」に入っていなければPC達は死亡し、グレイヴディガーの配下にさせられてしまう。冒険はここで終了だ。", "『葬送者』グレイヴディガー(CL200・魔将)、『ディガー様親衛隊隊長』フュネライユ(CL66・ネームド)、エルダーリッチ(CL55)、イビルオーメン(CL42)×2とエンカウント。"],
          ],
          45 => [
            ["ゴースト(CL10)、ソルジャー(CL4)×2", "ゴースト(CL10)、ハタモト(CL10)×2", "デュラハン(CL22)、ハタモト(CL10)×3", "エルダーリッチ(CL55)、アダマンゴーレム(CL45)×2"],
            ["ゴースト", "ゴースト", "デュラハン", "エルダーリッチ"],
            ["100", "200", "300", "500"],
          ],
          46 => [
            ["ボーンスネーク(CL20)とエンカウント", "ボーンスネーク(CL20)×2とエンカウント", "ボーンスネーク(CL20)×3とエンカウント、致傷力+2", "ラダマンティスの蛇(CL50)×2とエンカウント、半ば化石になりかけており「叩きダメージボーナス2倍」を追加"],
          ],

          51 => [
            ["「意志」", "「意志-2」", "「意志-4」", "「意志-8」"],
          ],
          52 => [
            ["「よけ」", "「よけ-2」", "「よけ-4」", "「よけ-8」"],
            ["3D", "5D", "7D", "11D"],
          ],
          53 => [
            ["<建築>", "<建築-2>", "<建築-4>", "<建築-8>"],
            ["3D", "5D", "7D", "11D"],
          ],
          54 => [
            ["「体力-3」", "「体力-5」", "「体力-7」", "「体力-11」"],
            ["ジェルスケルトン(CL10)", "ボーンスネーク(CL20)", "リッチ(CL44)", "『ディガー様親衛隊隊長』フュネライユ(CL66・ネームド)"],
          ],
          55 => [
            ["100", "200", "400", "1000"],
            ["3D", "5D", "7D", "11D"],
          ],

          61 => [
            ["5D", "7D", "9D", "13D"],
          ],
          62 => [
            ["「生命力」", "「生命力-1」", "「生命力-2」", "「製絵魅力-4」"],
          ],
          63 => [
            ["-1", "-2", "-3", "-4"],
            ["2000", "6000", "20000", "60000"],
          ],
          64 => [
            [
              '1:火炎弾×5(アームガン弾薬)
            2:冷凍弾×5(アームガン弾薬)
            3:貫甲弾×3(アームガン弾薬)
            4:簡易ソーサルセット(装飾品)
            5:ギアテール(装飾品)
            6:パイルバンカー高速収納装置(装飾品)',
              '1:火炎弾×5(アームガン弾薬)
            2:冷凍弾×5(アームガン弾薬)
            3:貫甲弾×3(アームガン弾薬)
            4:ゴーレムアーム(装飾品)
            5:ゴーレムアーム(装飾品)
            6:ホイールブースター(装飾品)',
              '1:火炎弾×5(アームガン弾薬)
            2:冷凍弾×5(アームガン弾薬)
            3:貫甲弾×3(アームガン弾薬)
            4:ヒュージーミスリルフィスト(装飾品)
            5:ヒュージーミスリルフィスト(装飾品)
            6:ヒュージーブレード(両手剣)',
              '1:火炎弾×5(アームガン弾薬)
            2:冷凍弾×5(アームガン弾薬)
            3:貫甲弾×3(アームガン弾薬)
            4:ヒュージーブレード(両手剣)
            5:ヒュージーブレード(両手剣)
            6:ナグルファル装甲(装飾品)'
            ],
          ],
          65 => [
            ["200", "500", "1000", "5000"],
            ["カロン(CL12)×2とエンカウント", "カロン(CL12)×2とエンカウント、致傷力+2", "カロンキャプテン(CL25)×2とエンカウント", "エルダーリッチ(CL55)×2とエンカウント"],
          ],
          66 => [
            ["墓場のブラックナイト(CL10)とエンカウント", "墓場のブラックナイト(CL20)とエンカウント", "墓場のブラックナイト(CL30)とエンカウント", "墓場のハイペリオンダミー(CL100)とエンカウント"],
            ["キメラウェポンズ", "キメラウェポンズ", "キメラウェポンズ", "グレートキメラウェポンズ"],
            [
              '墓場のブラックナイト(標準CL10)　魔族
            攻防ともに高い能力を持つ、魔族のエリート騎士。
            常時《倍速》で武器には《戻る武器》がかかっている。
            ST16　DX15　IQ12　HT15　HP45　FP26
            受防3(金属鎧)　防護6(金属鎧)　移動5　よけ5　受け9　止め-
            常時《倍速》　<跳躍18>
            キメラウェポンズ18(特殊)・・・攻撃ごとに形状変化　上質　壊れない　《戻る武器》
            キメラウェポンズ/両手剣・・・命中21　2D+6「切り」　射程2
            キメラウェポンズ/両手メイス・・・命中21　2D+7「叩き」　射程2
            キメラウェポンズ/両手斧・・・命中21　2D+6「切り」　射程2
            キメラウェポンズ/長槍・・・命中21　2D+6「刺し」　射程3
            ・ウォリアー
            行動：【クロスブレイク】+【ハイスピードブレイク】(両手剣)　FP6　2D+7「切り」　2回攻撃
            行動：【リープアタック】+【ジェノサイドリープ】(両手剣)　FP4
            2D+6「切り」<跳躍>でフェイント　2体まで攻撃　移動妨害・大振りにならない
            行動：【ヘビースマッシュ】(両手メイス)　FP2　2D+13「叩き」
            行動：【トマホークミサイル】(両手斧)　FP2　2D+8「切り」　回避-2　半致傷16　最大射程24
            行動：【スターダストフォール】(長槍)　FP3　1D+6　回避-3　半致傷16　最大射程24
            行動：【ワールウィンド】(長槍)　FP3　2D+6「切り」　周囲半径3ヘクス
            ・オリジナル
            【騎士の闘気】
            使用：常時　判定：なし　疲労：なし　強化：×
            ターンの最初にFPを3点回復する。
            所有レア：漆黒の甲冑(鎧)',

              '墓場のブラックナイト(標準CL20)　魔族
            攻防ともに高い能力を持つ、魔族のエリート騎士。
            常時《倍速》で武器には《戻る武器》がかかっている。
            ST16　DX15　IQ12　HT15　HP75　FP36
            受防3(金属鎧)　防護6(金属鎧)　移動5　よけ5　受け9　止め-
            常時《倍速》　<跳躍18>
            キメラウェポンズ18(特殊)・・・攻撃ごとに形状変化　上質　壊れない　《戻る武器》
            キメラウェポンズ/両手剣・・・命中31　2D+10「切り」　射程2
            キメラウェポンズ/両手メイス・・・命中31　2D+11「叩き」　射程2
            キメラウェポンズ/両手斧・・・命中31　2D+10「切り」　射程2
            キメラウェポンズ/長槍・・・命中31　2D+10「刺し」　射程3
            ・ウォリアー
            行動：【クロスブレイク】+【ハイスピードブレイク】(両手剣)　FP6　2D+11「切り」　2回攻撃
            行動：【リープアタック】+【ジェノサイドリープ】(両手剣)　FP4
            2D+10「切り」<跳躍>でフェイント　2体まで攻撃　移動妨害・大振りにならない
            行動：【ヘビースマッシュ】(両手メイス)　FP2　2D+17「叩き」
            行動：【トマホークミサイル】(両手斧)　FP2　2D+12「切り」　回避-2　半致傷16　最大射程24
            行動：【スターダストフォール】(長槍)　FP3　1D+10　回避-3　半致傷16　最大射程24
            行動：【ワールウィンド】(長槍)　FP3　2D+10「切り」　周囲半径3ヘクス
            ・オリジナル
            【騎士の闘気】
            使用：常時　判定：なし　疲労：なし　強化：×
            ターンの最初にFPを3点回復する。
            所有レア：漆黒の甲冑(鎧)',

              '墓場のブラックナイト(標準CL30)　魔族
            攻防ともに高い能力を持つ、魔族のエリート騎士。
            常時《倍速》で武器には《戻る武器》がかかっている。
            ST16　DX15　IQ12　HT15　HP105　FP46
            受防3(金属鎧)　防護6(金属鎧)　移動5　よけ5　受け9　止め-
            常時《倍速》　<跳躍18>
            キメラウェポンズ18(特殊)・・・攻撃ごとに形状変化　上質　壊れない　《戻る武器》
            キメラウェポンズ/両手剣・・・命中41　2D+14「切り」　射程2
            キメラウェポンズ/両手メイス・・・命中41　2D+15「叩き」　射程2
            キメラウェポンズ/両手斧・・・命中41　2D+14「切り」　射程2
            キメラウェポンズ/長槍・・・命中41　2D+14「刺し」　射程3
            ・ウォリアー
            行動：【クロスブレイク】+【ハイスピードブレイク】(両手剣)　FP6　2D+15「切り」　2回攻撃
            行動：【リープアタック】+【ジェノサイドリープ】(両手剣)　FP4
            2D+14「切り」<跳躍>でフェイント　2体まで攻撃　移動妨害・大振りにならない
            行動：【ヘビースマッシュ】(両手メイス)　FP2　2D+21「叩き」
            行動：【トマホークミサイル】(両手斧)　FP2　2D+16「切り」　回避-2　半致傷16　最大射程24
            行動：【スターダストフォール】(長槍)　FP3　1D+14　回避-3　半致傷16　最大射程24
            行動：【ワールウィンド】(長槍)　FP3　2D+14「切り」　周囲半径3ヘクス
            ・オリジナル
            【騎士の闘気】
            使用：常時　判定：なし　疲労：なし　強化：×
            ターンの最初にFPを3点回復する。
            所有レア：漆黒の甲冑(鎧)',

              '墓場のハイペリオンダミー(標準CL100)　魔族
            第三魔将ハイペリオンを模して造られたダミー装甲。
            常時《倍速》で武器には《戻る武器》がかかっている。
            ST75　DX22　IQ15　HT27　HP527　FP275
            受防4　防護15　移動10　よけ10　受け14　止め-
            バッドステータス無効　ファンブル無効　切り刺しダメージボーナス無効
            常時《倍速》　<戦術20>　イニシアチブ値12　装備重量150ｋｇ
            グレートキメラウェポンズ28(特殊)・・・攻撃ごとに形状変化　最高品質　《戻る武器》
            キメラウェポンズ/両手剣・・・命中58　17D+10「切り」　射程2
            キメラウェポンズ/両手メイス・・・命中58　17D+11「叩き」　射程2
            キメラウェポンズ/両手斧・・・命中58　17D+10「切り」　射程2
            キメラウェポンズ/長槍・・・命中58　17D+10「刺し」　射程3
            世界樹装甲・・・防護点が減少しない(一時的な「防護点無視」の効果は受ける)
            着用者のHPをターンの最初に10点回復する
            ・ウォリアー
            行動：【クロスブレイク+5】+【ハイスピードブレイク+5】(両手剣)　FP16
            17D+16「切り」　回避-5　2回攻撃
            行動：【ヘビースマッシュ+5】+【ヘビーストライク】(両手メイス)　FP11
            17D+40「切り」　「受け」「止め」時に装備を破壊　「生命力-6」に失敗すると朦朧
            行動：【トマホークミサイル+5】+【トールハンマー】(両手斧)　FP10
            命中64　17D+27「切り」　回避-2　半致傷750　最大射程1120
            行動：【スターダストフォール+5】+【プロミストビクトリー】(長槍)　FP12
            8D+20「刺し」　必中クリティカル　クリティカル表参照なし　射撃攻撃　半致傷75　最大射程112
            行動：【ワールウィンド+5】+【バイオレントウィンド】(長槍)　FP
            17D+10+(移動距離÷2)「切り」　周囲半径3ヘクス　「敏捷-9」で転倒判定　大振りにならない
            ・センチュリオン
            イニシ：【ファーストムーブ】(戦術)　FP3　イニシアチブ判定に自動的に勝利
            回避：【ツーハンドプロテクト】　FP3　武器技能の3分の2で「受け」を行う
            行動：【ソニックブーム+4】　FP7　他の技に追加使用　近接物理攻撃の射程が50に
            ダメージ後：【アドバンストガード】　FP5　近接物理攻撃で受けた最終ダメージを半減　CT：次
            ・マスターナイト
            行動：【グレートチャージ】　FP5　他の近接技に追加使用　致傷力+15
            行動：【シーズエンジン】　FP6　他の射撃技に追加使用　「切り」+3D　「刺し」+2D
            ・オリジナル
            【無限の闘気】
            使用：常時　判定：なし　疲労：なし　強化：×
            ターンの最初にFPを30点回復する。
            【障壁破壊】
            使用：常時　判定：なし　疲労：なし　強化：×
            移動および攻撃時に《物質障壁》《完全障壁》の影響を受けない。
            また、ハイペリオンダミーの攻撃は受動防御のみで回避することができない。
            所有レア：世界樹装甲(鎧)'
            ],
          ],
        }
      }.freeze

      def random_difficulty(dice1, dice23, dif, index)
        DIFFICULTY_ENTRIES[dice1][dice23][index][dif]
      end

      alias getRandomDiff random_difficulty
    end
  end
end
