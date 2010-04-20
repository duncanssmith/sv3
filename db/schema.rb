# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100415095210) do

  create_table "assets", :force => true do |t|
    t.string   "name"
    t.string   "serial"
    t.string   "assetnumber"
    t.string   "deploymentstatus"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset_label"
    t.integer  "device_id"
    t.string   "audit_type"
  end

  create_table "assets_devices", :id => false, :force => true do |t|
    t.integer "asset_id"
    t.integer "device_id"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compliances", :force => true do |t|
    t.string   "product"
    t.string   "edition"
    t.integer  "entitlement_qty"
    t.integer  "installs"
    t.float    "value"
    t.float    "unit_cost"
    t.string   "entitlement_status"
    t.integer  "compliance"
    t.float    "compliance_value"
    t.string   "compliance_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "iso_code"
  end

  create_table "data_files", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.string   "asset_id"
    t.string   "make"
    t.string   "model"
    t.string   "serial"
    t.string   "network_user_name"
    t.string   "node"
    t.string   "os"
    t.string   "os_service_level"
    t.string   "chassis"
    t.string   "domain"
    t.string   "ip"
    t.integer  "processor_count"
    t.string   "processor_type"
    t.integer  "processor_speed"
    t.integer  "ram"
    t.date     "bios_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mac_address"
    t.integer  "location_id"
  end

  create_table "devices_registers", :id => false, :force => true do |t|
    t.integer "device_id"
    t.integer "register_id"
  end

  create_table "entitlements", :force => true do |t|
    t.integer  "installation_id"
    t.integer  "version_id"
    t.string   "region"
    t.string   "agreement_type"
    t.string   "licence_type"
    t.integer  "location_id"
    t.integer  "quantity"
    t.integer  "cost"
    t.string   "currency"
    t.string   "document_reference"
    t.string   "document_type"
    t.date     "expiry"
    t.date     "support_expiry"
    t.integer  "entitlement_id"
    t.string   "supplier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "installations", :force => true do |t|
    t.integer  "version_id"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "licences", :force => true do |t|
    t.string   "sku"
    t.string   "publisher"
    t.string   "product"
    t.string   "edition"
    t.string   "version"
    t.string   "identifying_number"
    t.integer  "product_id"
    t.string   "region_or_country"
    t.string   "cal"
    t.string   "licence_type"
    t.string   "term"
    t.string   "upgrade"
    t.date     "term_expiry_date"
    t.string   "ci_name"
    t.string   "base_licence"
    t.date     "maintenance_expiry"
    t.string   "entitlement_type"
    t.string   "cost_centre"
    t.string   "volume_licence_agreement_number"
    t.string   "agreement_location"
    t.string   "entitlement_location"
    t.string   "supplier"
    t.string   "supplier_invoice_number"
    t.date     "invoice_date"
    t.string   "po_number"
    t.string   "country_of_usage"
    t.string   "product_substitution_rights"
    t.string   "secondary_rights"
    t.string   "transferability"
    t.string   "external_licence_transfer_requirements"
    t.string   "linkages"
    t.integer  "total_cost_of_line_item"
    t.integer  "quantity"
    t.string   "unit"
    t.integer  "cost_unit"
    t.integer  "maintenance_pa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "reference"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "address4"
    t.string   "address5"
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "fullname"
    t.integer  "publisher_id"
    t.string   "serial"
    t.string   "sku"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publishers", :force => true do |t|
    t.string   "name"
    t.string   "shortname"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registers", :force => true do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "frequency"
    t.string   "regtype"
    t.integer  "accuracy"
    t.integer  "device_id"
    t.integer  "asset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "role"
    t.integer  "client_id"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", :force => true do |t|
    t.string   "name"
    t.string   "fullname"
    t.integer  "product_id"
    t.string   "serial"
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
