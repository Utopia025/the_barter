class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
  end
end



#$ rails generate migration add_password_digest_to_users password_digest:string
#
#  Here the first argument is the migration name, and we’ve also supplied a
#  second argument with the name and type of attribute we want to create.
#  (Compare this to the original generation of the users table in Listing 6.1.)
#  We can choose any migration name we want, but it’s convenient to end the
#  name with _to_users, since in this case Rails automatically constructs a
#  migration to add columns to the users table. Moreover, by including the
#  second argument, we’ve given Rails enough information to construct the entire
#  migration for us, as seen in Listing 6.23.
