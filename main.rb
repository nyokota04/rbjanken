

puts "ジャンケン...(数字を選択してください)"

loop do
  puts "1(グー) 2(チョキ) 3(パー) 4(終了)"
  player_type = gets.chomp.to_i
  opponent_type = rand(1..3)
  jankens = ["" , "グー" , "チョキ" , "パー"]
  faces = ["" , "上" , "下" , "左" , "右"]
 

    if player_type ==1 && opponent_type ==2 ||
      player_type ==2 && opponent_type ==3 ||
      player_type ==3 && opponent_type ==1
      puts"ポイ！"
      puts""
      puts "あなた：#{jankens[player_type]}"
      puts "相手：#{jankens[opponent_type]}"
      puts"あなたの勝ちです!"
      puts"------------------------------------------"

      puts"あっち向いて...(数字を選択してください)"
      puts"1(上) 2(下) 3(左) 4(右) 5(終了)"
      player_type_face = gets.chomp.to_i
      opponent_type_face = rand(1..4)
      if player_type_face == opponent_type_face
        puts"ホイ！"
        puts""
        puts "あなた：#{faces[player_type_face]}"
        puts "相手：#{faces[opponent_type_face]}"
        puts "あなたの勝ちです！"
        puts"------------------------------------------"
        break
      elsif player_type_face == 5
        puts"終了"
        break
      else
        puts"ホイ！"
        puts""
        puts "あなた：#{faces[player_type_face]}"
        puts "相手：#{faces[opponent_type_face]}"
        puts"引き分け"
        puts"------------------------------------------"
        puts "ジャンケン...(数字を選択してください)"
      end


    elsif player_type ==2 && opponent_type ==1 ||
      player_type ==3 && opponent_type ==2 ||
      player_type ==1 && opponent_type ==3
      puts"ポイ！"
      puts""
      puts "あなた：#{jankens[player_type]}"
      puts "相手：#{jankens[opponent_type]}"
      puts"あなたの負けです..."
      puts"------------------------------------------"

      puts"あっち向いて...(数字を選択してください)"
      puts"1(上) 2(下) 3(左) 4(右) 5(終了)"
      player_type_face = gets.chomp.to_i
      opponent_type_face = rand(1..4)
      if player_type_face == opponent_type_face
        puts"ホイ！"
        puts""
        puts "あなた：#{faces[player_type_face]}"
        puts "相手：#{faces[opponent_type_face]}"
        puts "あなたの負けです..."
        puts"------------------------------------------"
        break
      elsif player_type_face == 5
        puts"終了"
        break
      else
        puts"ホイ！"
        puts""
        puts "あなた：#{faces[player_type_face]}"
        puts "相手：#{faces[opponent_type_face]}"
        puts"引き分け"
        puts"------------------------------------------"
        puts "ジャンケン...(数字を選択してください)"
       end

    elsif player_type == opponent_type
      puts"ポイ！"
      puts""
      puts "あなた：#{jankens[player_type]}"
      puts "相手：#{jankens[opponent_type]}"
      puts"------------------------------------------"
      puts "あいこで...(数字を選択してください)"

    else
      puts"終了" 
      break
    end

end


