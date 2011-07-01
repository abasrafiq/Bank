class CreateBankCustomers < ActiveRecord::Migration
  def self.up
    create_table :bank_customers do |t|
      t.string :acct_no
      t.string :acct_name
      t.float :balance

      t.timestamps
    end
  end

  def self.down
    drop_table :bank_customers
  end
end
