require 'rubygems'
require 'bundler/setup'
require 'aws-sdk'
require 'json'
require 'trollop'

opts = Trollop::options do
	opt :id , "Your AWS access key ID", :required => true, type: :string
	opt :key, "Your AWS Secret Access Key", :required => true, type: :string
end

iam = Aws::IAM::Client.new(
  region: 'us-west-2',
  access_key_id: opts[:id],
  secret_access_key: opts[:key]
)

keyList = iam.list_access_keys
keys = {}
keyList.access_key_metadata.each do |accesskey|
  
  if keys[accesskey.user_name]
     keys[accesskey.user_name].push accesskey.access_key_id
  else
     keys[accesskey.user_name] = [accesskey.access_key_id]
  end
  
  
end
puts keys.to_json