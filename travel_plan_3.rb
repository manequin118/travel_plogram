plans = [
  { place: "沖縄旅行", price: 10000 },
  { place:"北海道旅行", price: 20000},
  { place:"九州旅行",price: 15000}
]

puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

while true
print "プランの番号を選択 >"
select_plan_num = gets.to_i
break if (1..3).include?(select_plan_num)
 puts "1~3の番号を選択してください。"
end

chose_plan_number = plans[select_plan_num - 1]
 puts "#{chose_plan_number[:place]}ですね。"

 while true
puts "何名で予約されますか？"
print "人数を入力 >"
how_many_people = gets.to_i
break if how_many_people > 0 && how_many_people.is_a?(Integer)
 puts "1人以上を入力してください。"
end

puts "#{how_many_people}名ですね。"
total_plice = chose_plan_number[:price] * how_many_people
if how_many_people >= 5
  puts "5名以上ですので10%割引となります。"
  total_plice *= 0.9
end
puts "合計金額は#{total_plice.floor}円になります。"
