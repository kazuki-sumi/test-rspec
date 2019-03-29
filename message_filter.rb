class MessageFilter
  def initialize(word)
    @word = word
  end
  
  def detect?(text)
    # 引数のtextと生成されたインスタンス変数との中身が少しでも含まれているか
    text.include?(@word)
  end
end
