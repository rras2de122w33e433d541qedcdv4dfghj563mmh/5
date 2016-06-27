do

function run(msg, matches)

local fuse = '#newfeedback \n\nID ▶️ : ' .. msg.from.id .. '\n\nGROUP ID ▶️ : '..msg.to.id..'\n\nName▶️ : ' .. msg.from.print_name ..'\n\nusername ▶️ :@'..(msg.from.username or 'ندارد')..'\n\nPhone number ▶️ :+'..(msg.from.phone or 'ندارد')..'\n\ :\n\n\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


    local text = matches[1]
 bannedidone = string.find(msg.from.id, '123')
        bannedidtwo =string.find(msg.from.id, '465')       
   bannedidthree =string.find(msg.from.id, '678')  


        print(msg.to.id)

        if bannedidone or bannedidtwo or bannedidthree then                   
                return 'You are banned to send a feedback'
 else


                 local sends0 = send_msg('channel#1045086781', fuse, ok_cb, false)

 return 'پیام شما با موفقیت برای ما ارسال شد!'

     

end

end
return {
  description = "Feedback",

  usage = "feedback : ارسال پیام به ادمین های ربات",
  patterns = {
   "^[!/][Ff]eedback (.*)$",
   "^[Ff]eedback (.*)$"

  },
  run = run
}

end
