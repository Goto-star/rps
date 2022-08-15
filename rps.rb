def rps
    puts "じゃんけん...."
    puts "0(グー),1(チョキ),2(パー),3(戦わない)"
    
    put_out_rps = gets.to_i
    puts "ホイ！"
    puts "---------------"
    
    pc_put_out = rand(3)
    case_patttern = ""
    
    #じゃんけん
    if (put_out_rps == 0 && pc_put_out == 1) || (put_out_rps == 1 && pc_put_out == 2) || (put_out_rps == 2 && pc_put_out == 0)
        case_patttern = "パターンA"
        jankens = ["グー", "チョキ", "パー"]
        
        puts "あなた：#{jankens[put_out_rps]}を出しました"
        puts "相手：#{jankens[pc_put_out]}を出しました"
        puts "---------------"
    elsif put_out_rps == pc_put_out
        case_patttern = "パターンA"
        jankens = ["グー", "チョキ", "パー"]
        
        puts "あなた：#{jankens[put_out_rps]}を出しました"
        puts "相手：#{jankens[pc_put_out]}を出しました"
        puts "あいこで"
        return true
    elsif put_out_rps == 3
        puts "パスします。"
        puts "---------------"
        return true
    elsif put_out_rps > 3
        puts "入力された値が無効です"
        return true
    else
        case_patttern = "パターンA"
        jankens = ["グー", "チョキ", "パー"]
        
        puts "あなた：#{jankens[put_out_rps]}を出しました"
        puts "相手：#{jankens[pc_put_out]}を出しました"
        puts "---------------"
    end
    
    #あっち向いてほい
    case case_patttern
    when "パターンA"
        puts "あっち向いて~"
        puts "0(上),1(下),2(左),3(右)"
        
        put_out_hoi = gets.to_i
        puts "ホイ！"
        puts "---------------"
        
        pc_put_out_hoi = rand(4)
        
        if put_out_hoi != pc_put_out_hoi
            directions = ["上", "下", "左", "右"]
            
            puts "あなた：#{directions[put_out_hoi]}を出しました"
            puts "相手：#{directions[pc_put_out_hoi]}を出しました"
            puts "---------------"
            return true
        else
            directions = ["上", "下", "左", "右"]
            
            puts "あなた：#{directions[put_out_hoi]}を出しました"
            puts "相手：#{directions[pc_put_out_hoi]}を出しました"
            puts "---------------"
            return false
        end
    end
end

next_game = true

while next_game
    next_game = rps
end



