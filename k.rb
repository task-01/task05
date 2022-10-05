puts "じゃんけん．．．"
def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グー", "チョキ","パー"]
  puts "あなた:#{jankens[player_hand]}"
  puts "相手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    return true
  elsif player_hand == 3 
    puts "勝負を終了します"
    return false
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    return hoihoi1 #自分の勝ち
  else
    return hoihoi2 #相手の勝ち
  end
end

def hoihoi1
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    player_hand2 = gets.to_i
    program_hand2 = rand(4)
    hoihoi = ["上", "下", "左", "右"]
    puts "あなた：#{hoihoi[player_hand2]}"
    puts "相手：#{hoihoi[program_hand2]}"
    if player_hand2 == program_hand2
        puts "あなたの勝利です"
        return false
      else
        puts "じゃんけん．．．"
        return janken
    end
end

def hoihoi2
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    player_hand3 = gets.to_i
    program_hand3 = rand(3)
    hoihoi = ["上", "下", "左", "右"]
    puts "あなた：#{hoihoi[player_hand3]}"
    puts "相手：#{hoihoi[program_hand3]}"
    if player_hand3 == program_hand3
        puts "相手の勝利です"
        return false
    else
        puts "じゃんけん．．．"
        return janken
    end
end





next_game = true

while next_game
  next_game = janken
end
