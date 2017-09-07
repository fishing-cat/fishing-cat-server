class AddAttrsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :fingerprint, :string
    add_column :events, :remote_ip, :string
    add_column :events, :query_string, :text
    add_column :events, :request_method, :string
    add_column :events, :request_path, :text
    add_column :events, :request_uri, :text
    add_column :events, :http_user_agent, :text
    add_column :events, :http_dnt, :string
    add_column :events, :http_referer, :text
    add_column :events, :http_accept, :text
    add_column :events, :http_accept_encoding, :text
    add_column :events, :http_accept_language, :text
    add_column :events, :params, :text
    %i(fingerprint remote_ip query_string request_method request_path request_uri http_user_agent http_dnt http_referer http_accept http_accept_encoding http_accept_language params).each do |column|
          add_index :events, column
    end
  end
end
