class ChangeDatatypeForBirthdate < ActiveRecord::Migration[6.1]
    def change 
        reversible do |direction|
            change_table :students do |t|
              direction.up   { t.change :birthdate, :datetime }
              direction.down { t.change :birthdate, :string }
            end 
        end
    end
end