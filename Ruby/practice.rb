# 繰り返し記入ができる
# 追加と確認ができる
# コードが短く簡潔にまとまっている

def make_memo
	puts "メモ追加モードが選択されました"
	print "メモのタイトル→"
	title = gets.chomp
	print "その具体的行動→"
	content = gets.chomp
	memo = {"タイトル" => title, "本文" => content}
end

def show_memo(memos)
	puts "確認モードが選択されました"
	memos.each do |memo|
		puts memo["タイトル"] + "→" + memo["本文"]
	end
end

memos = []

while true
	puts "【モードを選択してください】"
	puts "【add】メモを追加する"
	puts "【show】メモを確認する"
	print "showまたはaddと選択してくださ"
	mode = gets.chomp
	if mode == "add"
		memos.push(make_memo)
	elsif mode == "show"
		show_memo(memos)
	else
		puts "エラーです"
	end
end