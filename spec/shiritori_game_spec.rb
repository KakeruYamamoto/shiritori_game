require './shiritori_game'

RSpec.describe ShiritoriGame do
  describe '.rule' do
    it 'シリトリのルールが表示される' do
      expect(ShiritoriGame.rule).to eq("すべてカタカナで入力してください\n最後に 'ン' がついたら負けです\n同じ単語を使ったら負けです\n")
    end
  end
end
