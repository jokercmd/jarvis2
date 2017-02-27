--------------------------------------------------------------------------------
local function make_keyboard()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = _("test"), callback_data = 'test'},
	    },
    }
    return keyboard
end
-----------------------------------------------------------------------------------------------
function is_mod(user_id, chat_id)
    local var = false
	sudo_users = {56693692}
    local hash =  'bot:mods:'..chat_id
    local mod = db:sismember(hash, user_id)
	local hashs =  'bot:admins:'
    local admin = db:sismember(hashs, user_id)
	local hashss =  'bot:owners:'..chat_id
    local owner = db:sismember(hashss, user_id)
	 if mod then
	    var = true
	 end
	 if owner then
	    var = true
	 end
	 if admin then
	    var = true
	 end
    for k,v in pairs(sudo_users) do
    if user_id == v then
      var = true
    end
	end
    return var
end
--------------------------------------------------------------------------------
local function settings(exp_dat,show_lang,mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,flood_dn,flood_m,flood_up,mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,floodt_m,chat_id)
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = _("Stickers"), callback_data = 'a'},
    		{text = _(lock_sticker), callback_data = 'lock_sticker:'..chat_id},
	    },
    	{
    		{text = _("TgServices"), callback_data = 'a'},
    		{text = _(lock_tgservice), callback_data = 'lock_tgservice:'..chat_id},
	    },
    	{
    		{text = _("Links"), callback_data = 'a'},
    		{text = _(mute_links), callback_data = 'lock_links:'..chat_id},
	    },
    	{
    		{text = _("WebPage"), callback_data = 'a'},
    		{text = _(lock_wp), callback_data = 'lock_webpage:'..chat_id},
	    },
    	{
    		{text = _("Tag{@}/Mention"), callback_data = 'a'},
    		{text = _(lock_tag), callback_data = 'lock_tag:'..chat_id},
	    },
    	{
    		{text = _("Hashtag{#}"), callback_data = 'a'},
    		{text = _(lock_htag), callback_data = 'lock_hashtag:'..chat_id},
	    },
    	{
    		{text = _("Share Contact"), callback_data = 'a'},
    		{text = _(lock_contact), callback_data = 'lock_contact:'..chat_id},
	    },
    	{
    		{text = _("English"), callback_data = 'a'},
    		{text = _(lock_english), callback_data = 'lock_english:'..chat_id},
	    },
    	{
    		{text = _("Location"), callback_data = 'a'},
    		{text = _(lock_location), callback_data = 'lock_location:'..chat_id},
	    },
    	{
    		{text = _("Bots"), callback_data = 'a'},
    		{text = _(mute_bots), callback_data = 'lock_bots:'..chat_id},
	    },
    	{
    		{text = _("Inline"), callback_data = 'a'},
    		{text = _(mute_in), callback_data = 'lock_inline:'..chat_id},
	    },
    	{
    		{text = _("Arabic/Persian"), callback_data = 'a'},
    		{text = _(lock_arabic), callback_data = 'lock_arabic:'..chat_id},
	    },
    	{
    		{text = _("Forward"), callback_data = 'a'},
    		{text = _(lock_forward), callback_data = 'lock_forward:'..chat_id},
	    },
    	{
    		{text = _("Edit Msg"), callback_data = 'a'},
    		{text = _(mute_edit), callback_data = 'lock_edit:'..chat_id},
	    },
    	{
    		{text = _("Pin Msg"), callback_data = 'a'},
    		{text = _(lock_pin), callback_data = 'lock_pin:'..chat_id},
	    },
    	{
    		{text = _("Flood"), callback_data = 'a'},
    		{text = _(mute_flood), callback_data = 'lock_flood:'..chat_id},
	    },
    	{
    		{text = _("🔽Flood MAX🔽"), callback_data = 'a'},
	    },
	    {
	        {text = _(flood_dn), callback_data = 'flood_down:'..chat_id},
	        {text = _(flood_m), callback_data = 'a'},
	        {text = _(flood_up), callback_data = 'flood_up:'..chat_id},
        },
		{
    		{text = _("🔽Flood TIME🔽"), callback_data = 'a'},
	    },
		{
	        {text = _('-'), callback_data = 'floodt_down:'..chat_id},
	        {text = _(floodt_m), callback_data = 'a'},
	        {text = _('+'), callback_data = 'floodt_up:'..chat_id},
        },
		{
    		{text = _("Mutes list"), callback_data = 'a'},
	    },
		{
    		{text = _("Mute all "), callback_data = 'a'},
    		{text = _(mute_all), callback_data = 'mute_all:'..chat_id},
	    },
		{
    		{text = _("Text"), callback_data = 'a'},
    		{text = _(mute_text), callback_data = 'mute_text:'..chat_id},
	    },
		{
    		{text = _("Photos"), callback_data = 'a'},
    		{text = _(mute_photo), callback_data = 'mute_photo:'..chat_id},
	    },
		{
    		{text = _("Videos"), callback_data = 'a'},
    		{text = _(mute_video), callback_data = 'mute_video:'..chat_id},
	    },
		{
    		{text = _("Gifs"), callback_data = 'a'},
    		{text = _(mute_gifs), callback_data = 'mute_gifs:'..chat_id},
	    },
		{
    		{text = _("Musics"), callback_data = 'a'},
    		{text = _(mute_music), callback_data = 'mute_music:'..chat_id},
	    },
		{
    		{text = _("Voice"), callback_data = 'a'},
    		{text = _(mute_voice), callback_data = 'mute_voice:'..chat_id},
	    },
		{
    		{text = _(mute_cmd), callback_data = 'lock_cmd:'..chat_id},
	    },
		{
    		{text = _(show_lang), callback_data = 'show_lang:'..chat_id},
	    },
		{
    		{text = _(exp_dat), callback_data = 'show_expire:'..chat_id},
	    },
		
    }
    return keyboard
end
--------------------------------------------------------------------------------
local action = function(msg, blocks)
local admin = roles.is_superadmin(msg.from.id)
--------------------------------------------------------------------------------
---------------------------* INLINE KEYBOARDS *---------------------------------
--------------------------------------------------------------------------------
if msg.cb then
    local query = blocks[1]
	local query_id = blocks[2]
    local text
    local with_mods_lines = true
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_sticker' then
	if db:get('bot:sticker:mute'..query_id) then
	   db:del('bot:sticker:mute'..query_id)
	else
	   db:set('bot:sticker:mute'..query_id,true)
	end
	if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_tgservice' then
	if db:get('bot:tgservice:mute'..query_id) then
	   db:del('bot:tgservice:mute'..query_id)
	else
	   db:set('bot:tgservice:mute'..query_id,true)
	end
	if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_links' then
	if db:get('bot:links:mute'..query_id) then
	   db:del('bot:links:mute'..query_id)
	else
	   db:set('bot:links:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_webpage' then
	if db:get('bot:webpage:mute'..query_id) then
	   db:del('bot:webpage:mute'..query_id)
	else
	   db:set('bot:webpage:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_tag' then
	if db:get('bot:tag:mute'..query_id) then
	   db:del('bot:tag:mute'..query_id)
	else
	   db:set('bot:tag:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_hashtag' then
	if db:get('bot:hashtag:mute'..query_id) then
	   db:del('bot:hashtag:mute'..query_id)
	else
	   db:set('bot:hashtag:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_contact' then
	if db:get('bot:contact:mute'..query_id) then
	   db:del('bot:contact:mute'..query_id)
	else
	   db:set('bot:contact:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_english' then
	if db:get('bot:english:mute'..query_id) then
	   db:del('bot:english:mute'..query_id)
	else
	   db:set('bot:english:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
    if query == 'lock_location' then
	if db:get('bot:location:mute'..query_id) then
	   db:del('bot:location:mute'..query_id)
	else
	   db:set('bot:location:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
    if query == 'lock_bots' then
	if db:get('bot:bots:mute'..query_id) then
	   db:del('bot:bots:mute'..query_id)
	else
	   db:set('bot:bots:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
    if query == 'lock_inline' then
	if db:get('bot:inline:mute'..query_id) then
	   db:del('bot:inline:mute'..query_id)
	else
	   db:set('bot:inline:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'lock_arabic' then
	if db:get('bot:arabic:mute'..query_id) then
	   db:del('bot:arabic:mute'..query_id)
	else
	   db:set('bot:arabic:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'lock_forward' then
	if db:get('bot:forward:mute'..query_id) then
	   db:del('bot:forward:mute'..query_id)
	else
	   db:set('bot:forward:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'lock_edit' then
	if db:get('editmsg'..query_id) then
	   db:del('editmsg'..query_id)
	else
	   db:set('editmsg'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'lock_pin' then
	if db:get('bot:pin:mute'..query_id) then
	   db:del('bot:pin:mute'..query_id)
	else
	   db:set('bot:pin:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'lock_flood' then
	if db:get('anti-flood:'..query_id) then
	   db:del('anti-flood:'..query_id)
	else
	   db:set('anti-flood:'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'flood_down' then
	if db:get('flood:max:'..query_id) then
	local aa = tonumber(db:get('flood:max:'..query_id)) - 1
	if aa < 2 then
	 api.answerCallbackQuery(msg.cb_id, "Value Not Allowed!",true)
      return false
	  end
	   db:set('flood:max:'..query_id,aa)
	else
	   db:set('flood:max:'..query_id,4)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'floodt_up' then
	if db:get('flood:time:'..query_id) then
	local aa = tonumber(db:get('flood:time:'..query_id)) + 1
	   db:set('flood:time:'..query_id,aa)
	else
	   db:set('flood:time:'..query_id,4)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'flood_up' then
	if db:get('flood:max:'..query_id) then
	local aa = tonumber(db:get('flood:max:'..query_id)) + 1
	   db:set('flood:max:'..query_id,aa)
	else
	   db:set('flood:max:'..query_id,4)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'floodt_down' then
	if db:get('flood:time:'..query_id) then
	local aa = tonumber(db:get('flood:time:'..query_id)) - 1
	 if aa < 2 then
	 api.answerCallbackQuery(msg.cb_id, "Value Not Allowed!",true)
      return false
	  end
	   db:set('flood:time:'..query_id,aa)
	else
	   db:set('flood:time:'..query_id,2)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
    --------------------------------------------------------------------------------
	if query == 'mute_all' then
	if db:get('bot:muteall'..query_id) then
	   db:del('bot:muteall'..query_id)
	else
	   db:set('bot:muteall'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'mute_text' then
	if db:get('bot:text:mute'..query_id) then
	   db:del('bot:text:mute'..query_id)
	else
	   db:set('bot:text:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'mute_photo' then
	if db:get('bot:photo:mute'..query_id) then
	   db:del('bot:photo:mute'..query_id)
	else
	   db:set('bot:photo:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'mute_video' then
	if db:get('bot:video:mute'..query_id) then
	   db:del('bot:video:mute'..query_id)
	else
	   db:set('bot:video:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'mute_gifs' then
	if db:get('bot:gifs:mute'..query_id) then
	   db:del('bot:gifs:mute'..query_id)
	else
	   db:set('bot:gifs:mute'..query_id,true)
	end
			if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'mute_music' then
	if db:get('bot:music:mute'..query_id) then
	   db:del('bot:music:mute'..query_id)
	else
	   db:set('bot:music:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'mute_voice' then
	if db:get('bot:voice:mute'..query_id) then
	   db:del('bot:voice:mute'..query_id)
	else
	   db:set('bot:voice:mute'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
	--------------------------------------------------------------------------------
	if query == 'lock_cmd' then
	if db:get('bot:cmds'..query_id) then
	   db:del('bot:cmds'..query_id)
	else
	   db:set('bot:cmds'..query_id,true)
	end
		if db:get('bot:muteall'..query_id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..query_id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..query_id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..query_id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..query_id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..query_id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..query_id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..query_id))
	end
	------------
	if not db:get('flood:time:'..query_id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..query_id)
	end
	------------
	if db:get('bot:music:mute'..query_id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..query_id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..query_id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..query_id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..query_id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..query_id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..query_id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..query_id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..query_id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..query_id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..query_id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..query_id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..query_id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..query_id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..query_id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..query_id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..query_id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..query_id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..query_id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..query_id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
            local text = 'Group Settings For '..query_id
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,query_id)
	   api.editMessageText(msg.chat.id, msg.message_id, text, keyboard)
	end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
-----------------------------* GLOBAL ADMINS *----------------------------------
-------------------------------------------------------------------------------
	if blocks[1] == 'reload' and admin then
		db:bgsave()
		local n_plugins = bot_init(true) or 0
		api.sendReply(msg, 'Reloaded!', true)
	end
--------------------------------------------------------------------------------
	if blocks[1] == 'backup' and admin then
	  if blocks[2] == 'redis' then
	   api.sendDocument(56693692, '/var/lib/redis/dump.rdb')
	   api.sendReply(msg,'_Sending Redis Database On Your Pv!_',true)
	  end
    end 
--------------------------------------------------------------------------------
	  if blocks[1] == 'settings' and is_mod(msg.from.id, msg.chat.id) then
	  if msg.chat.type ~= 'private' then
            local text = 'Group Settings For '..msg.chat.id
				if db:get('bot:muteall'..msg.chat.id) then
	mute_all = 'Lock'
	else
	mute_all = 'Unlock'
	end
	------------
	if db:get('bot:text:mute'..msg.chat.id) then
	mute_text = 'Lock'
	else
	mute_text = 'Unlock'
	end
	------------
	if db:get('bot:photo:mute'..msg.chat.id) then
	mute_photo = 'Lock'
	else
	mute_photo = 'Unlock'
	end
	------------
	if db:get('bot:video:mute'..msg.chat.id) then
	mute_video = 'Lock'
	else
	mute_video = 'Unlock'
	end
	------------
	if db:get('bot:gifs:mute'..msg.chat.id) then
	mute_gifs = 'Lock'
	else
	mute_gifs = 'Unlock'
	end
	------------
	if db:get('anti-flood:'..msg.chat.id) then
	mute_flood = 'Unlock'
	else
	mute_flood = 'Lock'
	end
	------------
	if not db:get('flood:max:'..msg.chat.id) then
	flood_m = tostring(5)
	else
	flood_m = tostring(db:get('flood:max:'..msg.chat.id))
	end
	------------
	if not db:get('flood:time:'..msg.chat.id) then
	flood_t = tostring(3)
	else
	flood_t = db:get('flood:time:'..msg.chat.id)
	end
	------------
	if db:get('bot:music:mute'..msg.chat.id) then
	mute_music = 'Lock'
	else
	mute_music = 'Unlock'
	end
	------------
	if db:get('bot:bots:mute'..msg.chat.id) then
	mute_bots = 'Lock'
	else
	mute_bots = 'Unlock'
	end
	------------
	if db:get('bot:inline:mute'..msg.chat.id) then
	mute_in = 'Lock'
	else
	mute_in = 'Unlock'
	end
	------------
	if db:get('bot:cmds'..msg.chat.id) then
	mute_cmd = 'Bot Commands : Disable'
	else
	mute_cmd = 'Bot Commands : Enable'
	end
	------------
	if db:get('bot:voice:mute'..msg.chat.id) then
	mute_voice = 'Lock'
	else
	mute_voice = 'Unlock'
	end
	------------
	if db:get('editmsg'..msg.chat.id) then
	mute_edit = 'Lock'
	else
	mute_edit = 'Unlock'
	end
    ------------
	if db:get('bot:links:mute'..msg.chat.id) then
	mute_links = 'Lock'
	else
	mute_links = 'Unlock'
	end
    ------------
	if db:get('bot:pin:mute'..msg.chat.id) then
	lock_pin = 'Lock'
	else
	lock_pin = 'Unlock'
	end 
    ------------
	if db:get('bot:sticker:mute'..msg.chat.id) then
	lock_sticker = 'Lock'
	else
	lock_sticker = 'Unlock'
	end
	------------
    if db:get('bot:tgservice:mute'..msg.chat.id) then
	lock_tgservice = 'Lock'
	else
	lock_tgservice = 'Unlock'
	end
	------------
    if db:get('bot:webpage:mute'..msg.chat.id) then
	lock_wp = 'Lock'
	else
	lock_wp = 'Unlock'
	end
	------------
    if db:get('bot:hashtag:mute'..msg.chat.id) then
	lock_htag = 'Lock'
	else
	lock_htag = 'Unlock'
	end
	------------
    if db:get('bot:tag:mute'..msg.chat.id) then
	lock_tag = 'Lock'
	else
	lock_tag = 'Unlock'
	end
	------------
    if db:get('bot:location:mute'..msg.chat.id) then
	lock_location = 'Lock'
	else
	lock_location = 'Unlock'
	end
	------------
    if db:get('bot:contact:mute'..msg.chat.id) then
	lock_contact = 'Lock'
	else
	lock_contact = 'Unlock'
	end
	------------
    if db:get('bot:english:mute'..msg.chat.id) then
	lock_english = 'Lock'
	else
	lock_english = 'Unlock'
	end
	------------
    if db:get('bot:arabic:mute'..msg.chat.id) then
	lock_arabic = 'Lock'
	else
	lock_arabic = 'Unlock'
	end
	------------
    if db:get('bot:forward:mute'..msg.chat.id) then
	lock_forward = 'Lock'
	else
	lock_forward = 'Unlock'
	end
	local ex = db:ttl("bot:charge:"..msg.chat.id)
                if ex == -1 then
				exp_dat = 'Unlimited Days Later'
				else
				exp_dat = tostring(math.floor(ex / 86400) + 1)..' Days Later'
			    end
	------------
	if db:get("bot:welcome"..msg.chat.id) then
	send_welcome = 'Enable'
	else
	send_welcome = 'Disable'
	end
			local keyboard = settings(exp_dat,'Group LANG : EN',mute_cmd,mute_voice,mute_music,mute_gifs,mute_video,mute_photo,mute_text,mute_all,'-',flood_m,'+',mute_flood,lock_pin,mute_edit,lock_forward,lock_arabic,mute_in,mute_bots,lock_location,lock_english,lock_contact,lock_htag,lock_tag,lock_wp,mute_links,lock_tgservice,lock_sticker,flood_t,msg.chat.id)
				  api.sendKeyboard(msg.from.id, text, keyboard, true)
				  	  	  	   api.sendReply(msg,'_Settings Was Sent On Your PV._',true)
				  	  else
	  	   api.sendReply(msg,'_send this cmd on your gp:|_',true)
      end
    end
--------------------------------------------------------------------------------
------------------------------* NORMAL USERS *----------------------------------
--------------------------------------------------------------------------------
    if blocks[1] == 'start' then
			text = 'Hi :D'
			local keyboard = make_keyboard()
			api.sendKeyboard(msg.chat.id, text, keyboard, true)
    end
  end
--------------------------------------------------------------------------------
-------------------------------* PATTERNS *-------------------------------------
--------------------------------------------------------------------------------

return {
	admin_not_needed = true,
	triggers = {
	    config.cmd..'(start)$',
	    config.cmd..'(reload)$',
	    config.cmd..'(settings)$',
	    config.cmd..'(backup) (redis)$',
		'^###cb:(lock_sticker):(.*)$',
		'^###cb:(lock_tgservice):(.*)$',
		'^###cb:(lock_links):(.*)$',
		'^###cb:(lock_webpage):(.*)$',
		'^###cb:(lock_tag):(.*)$',
		'^###cb:(lock_hashtag):(.*)$',
		'^###cb:(lock_contact):(.*)$',
		'^###cb:(lock_english):(.*)$',
		'^###cb:(lock_location):(.*)$',
		'^###cb:(lock_bots):(.*)$',
		'^###cb:(lock_inline):(.*)$',
		'^###cb:(lock_arabic):(.*)$',
		'^###cb:(lock_forward):(.*)$',
		'^###cb:(lock_edit):(.*)$',
		'^###cb:(lock_pin):(.*)$',
		'^###cb:(lock_flood):(.*)$',
		'^###cb:(flood_down):(.*)$',
		'^###cb:(flood_up):(.*)$',
		'^###cb:(floodt_down):(.*)$',
		'^###cb:(floodt_up):(.*)$',
		'^###cb:(mute_all):(.*)$',
		'^###cb:(mute_text):(.*)$',
		'^###cb:(mute_photo):(.*)$',
		'^###cb:(mute_video):(.*)$',
		'^###cb:(mute_gifs):(.*)$',
		'^###cb:(mute_music):(.*)$',
		'^###cb:(mute_voice):(.*)$',
		'^###cb:(lock_cmd):(.*)$',
    },
	action = action,
}
