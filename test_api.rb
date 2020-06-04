require "net/http"
require "json"

#  Định nghĩa URL, chính xác là tạo một đối tượng URI từ URL đó
url = "https://api.stackexchange.com/2.2/tags?order=desc&sort=popular&inname=ruby&site=stackoverflow"
uri = URI(url)
#  Gửi HTTP Request với method get
response = Net::HTTP.get(uri)
#  Xử lý kết quả trả về, ở đây mình chỉ in ra đoạn JSON trả về
puts JSON.parse(response)["items"][0]