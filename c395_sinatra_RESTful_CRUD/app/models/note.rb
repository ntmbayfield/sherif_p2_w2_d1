class Note < ActiveRecord::Base
  # played around on this page for a while: http://guides.rubyonrails.org/active_record_querying.html#scopes

  # this seems like a good idea.  but it's not
  # http://pragdave.blogs.pragprog.com/pragdave/2012/03/be-careful-using-default_scope-and-order.html
  # if you use this you have to add .unscoped to anything that changes it ... like [line.A] below
  # default_scope order('created_at desc')

  # this would work by adding a Note::recent method
  # so i could write Note.recent
  scope :recent, :order => 'created_at desc'

  # boo, this is lame.  i'd rather have these as part of a single scope
  scope :limit_recent_to, ->(lim) { recent.limit(lim) }

  # the next line doesn't work as expected default_scope is used (unless you add .unscoped)
  # [line.A]
  scope :earlybirds, :order => 'created_at asc', :limit => 5
end
