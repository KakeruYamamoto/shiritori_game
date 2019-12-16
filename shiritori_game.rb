class ShiritoriGame
  attr_accessor :player_name
  attr_accessor :histories

  def initialize(player_name:)

    @player_name = player_name
    @histories = []
    # @player_name
  end

  def self.rule
    rule_text = ''
    rule_text << "すべてカタカナで入力してください\n"
    rule_text << "最後に 'ン' がついたら負けです\n"
    rule_text << "同じ単語を使ったら負けです\n"
    rule_text
  end

  def self.all_words
    all_words = []
    all_words << "リンゴ"
    all_words << "ゴリラ"
    all_words << "ラッパ"
    all_words << "パリ"
  end

  def start
    "\\_o< Hi, #{@player_name}. Let's enjoy shiritori game\n"
  end

  def computer_attack(histories)
    # binding.pry
    last_word = histories[-1].split("").last
    all_words = ShiritoriGame.all_words
    shiritori_game_computer_attack = all_words.select{|x| x[0].include?(last_word)}
    shiritori_game_computer_attack

    end
  end

#ShiritoriGame.computer_attack
