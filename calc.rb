# 1. 使用 sinatra 進行開發。
# 2. 建立一個頁面，網址為：/atm。
# 3. 在 /atm 頁面會顯示目前帳戶餘額，預設為 0 元。
# 4. 在餘額下方有一個表單，裡面有 2 個欄位以及一個 submit 按鈕
#   a. 有一個 + 跟 - 的下拉選單（<select> 標籤）
#   b. 有一個輸入欄位，可輸入金額
# 5. 如果選單是 + 而且輸入欄位是 5，按下 submit 之後，畫面上的餘額會多 5 元；若選擇 - 且輸入 5 元，則餘額會少 5 元。
# 6. 存錢、領錢的功能要「合理」。

class ATM
  def initialize(balance)
    @balance = balance
  end
  def deposit(amount)
    if amount >= 0
      @balance += amount
    end
  end
  def balance
    @balance
  end
  def withdraw(amount)
    if amount > 0 && amount < @balance
      @balance -= amount
    end
  end
end

