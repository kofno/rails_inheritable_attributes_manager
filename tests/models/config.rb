require 'sqlite3'

module MammalSample

  DATABASE_NAME = '.mammal.db'

  class Leg < ActiveRecord::Base
  end

  class Mammal < ActiveRecord::Base
  end

  class Dog < Mammal
  end

  class Beagle < Dog
  end

  Mammal.class_eval do
    has_many :legs
    accepts_nested_attributes_for :legs, :reject_if => :all_blank
  end

  def initialize_db
    SQLite3::Database.new(DATABASE_NAME)
    ActiveRecord::Base.establish_connection(:adapter => 'sqlite3',
                                            :database => DATABASE_NAME)
  end

  def create_mammals
    return if Mammal.table_exists?
    ActiveRecord::Base.connection.create_table :mammals do |t|
      t.string :type
      t.timestamps
    end
  end

  def create_legs
    ActiveRecord::Base.connection.drop_table :legs if Leg.table_exists?
    ActiveRecord::Base.connection.create_table :legs do |t|
      t.integer :mammal_id
      t.string :length
      t.timestamps
    end
  end

end
