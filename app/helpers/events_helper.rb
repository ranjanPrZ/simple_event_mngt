module EventsHelper
	def attend_status(event)
    if( event.organized_at.present? && event.organized_at < Time.now.to_date )
    	'Event Over'
    else
    	event.users.pluck(:name).include?(current_user.name) ? 'Attend' : 'UnAttend'
		end
	end

	def attendees_count(event_details)
  	event_details[:users].present? ? event_details[:users].length : 0
	end

	def flash_key_cls(flash)
  keys = flash.keys
  keys_clas = keys.length>0 ? [keys.first, keys.first=="success" ? "success" : "danger"] : []
  return [keys_clas.first, keys_clas.last]
	end
end
