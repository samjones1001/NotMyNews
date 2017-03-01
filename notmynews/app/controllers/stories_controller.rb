class StoriesController < ApplicationController
	#before[authencate user ]
	def index
		@paper_list = ['buzzfeed', 'the-guardian-uk', 'the-huffington-post', 'the-new-york-times', 'mirror']
	end

end




#
# id | password | email | choice
# 1	 | password | test  | left
#
#
#
# id | name 			| position
# 1	 | guardian		| left
# 2	 | daily mail | right
