class Team

  # インスタンスが持つ変数（値）
 attr_accessor :name,:win,:lose,:drow

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name:,win:,lose:,drow:)
    self.name=name
    self.win=win
    self.lose=lose
    self.drow=drow
  end

  # インスタンスが持つメソッド（処理）
  def calc_win_rate
  return self.win.to_f/(self.win+self.lose.to_f)
  end

 def show_team_result
  puts "#{self.name}の成績は #{self.win}勝 #{self.lose}敗 #{self.drow}分、勝率は#{calc_win_rate}です。"
 end
end

# インスタンスの生成と、変数への代入
Giants=Team.new(name:"Giants",win:67,lose:45,drow:8)
Tigers=Team.new(name:"Tigers",win:60,lose:53,drow:7)
Dragons=Team.new(name:"Dragons",win:60,lose:55,drow:5)
BayStars=Team.new(name:"BayStars",win:56,lose:58,drow:6)
Carp=Team.new(name:"Carp",win:52,lose:56,drow:12)
Swallows=Team.new(name:"Swallows",win:41,lose:69,drow:10)
# インスタンスの使用
puts Giants.show_team_result
puts Tigers.show_team_result
puts Dragons.show_team_result
puts BayStars.show_team_result
puts Carp.show_team_result
puts Swallows.show_team_result