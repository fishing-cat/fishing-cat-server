class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :cid
      t.string :pid
      t.string :fingerprint
      t.string :remote_ip
      t.text   :query_string
      t.text   :request_method
      t.text   :request_path
      t.text   :request_uri
      t.text   :http_user_agent
      t.text   :http_dnt
      t.text   :http_referer
      t.text   :http_accept
      t.text   :http_accept_encoding
      t.text   :http_accept_language
      t.text   :params
      t.timestamps
    end
    %i(cid pid remote_ip query_string request_method request_path request_uri http_user_agent http_dnt http_referer http_accept http_accept_encoding http_accept_language params).each do |column|
      add_index :events, column
    end
  end
end
