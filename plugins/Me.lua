do
  do

local function run(msg, matches)
local uhash = 'user:'..msg.from.id
local user = redis:hgetall(uhash)
local um_hash = 'msgs:'..msg.from.id..':'..msg.to.id
user_info_msgs = tonumber(redis:get(um_hash) or 0)
  if matches[1] == 'me' or matches[1] == 'Me' then
    if is_sudo(msg) then
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `ғυll αdмιɴ🎭`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."️`"
    elseif is_admin(msg) then
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `вoт αdмιɴ🎭`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."`"
    elseif is_owner(msg) then
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `ɢroυp owɴer👤`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."`"
    elseif is_mod(msg) then
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `ɢroυp мoderαтor👮`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."`"
    else
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `ɢroυp мeмвer😑`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."`"
    end
			 local user_info = {} 
  local uhash = 'user:'..data.id_
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..data.id_..':'..arg.chat_id
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  text = text..'Total messages : '..user_info_msgs..'\n\n'
  text = text..' @LockerTeam '
  tdcli.sendMessage(arg.chat_id, arg.msgid, 0, text, 0, "md")
   else
   tdcli.sendMessage(arg.chat_id, "", 0, "*User not found*", 0, "md")
   end
  end
local function get_msgs_user_chat(user_id, chat_id)
  local user_info = {}
  local uhash = 'user:'..user_id
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..user_id..':'..chat_id
  user_info.msgs = tonumber(redis:get(um_hash) or 0)
  user_info.name = user_print_name(user)..' ['..user_id..']'
  return user_info
end
