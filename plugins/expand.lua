function run(msg,matches)

 if matches[1] == 'msgs' and msg.reply_to_message_id_ == 0  then
 if is_sudo(msg) then
  rank = ' Bot Owner '
 elseif is_owner(msg) then
  rank = ' Group Owner '
 elseif is_admin(msg) then
  rank = ' Bot Admin '
 elseif is_mod(msg) then
  rank = ' Moderator '
 else
  rank = 'Member '
 end
local function getpro(arg, data)

   if data.photos_[0] then
            tdcli.sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, data.photos_[0].sizes_[1].photo_.persistent_id_,'\n🔼 Your Photo 🔼\n\n💬 Your messages : '..user_info_msgs..'\n',msg.id_,msg.id_)
   else
      tdcli.sendMassage(msg.chat_id_, msg.id_, 1, "❌ _No Profile Photo !_ ❌\n\n*💬 Your messages :* `'..user_info_msgs..'`", 1, 'md')
   end
   end
   tdcli_function ({
    ID = "GetUserProfilePhotos",
    user_id_ = msg.sender_user_id_,
    offset_ = 0,
    limit_ = 1
  }, getpro, nil)
	end
	
end

return {
patterns = {
"^[/!#]([Mm][sgs])$",

},
run = run
}



