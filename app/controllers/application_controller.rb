require 'digest/md5'

class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  #before_action :authenticate_user!
  before_action :custom_user_auth

  def custom_user_auth

    if (
    params["publickey"]  &&
        params["timestamp"]  &&
        params["hash"] &&
        valid_key(params["publickey"], params["timestamp"], params["hash"]))


      puts params["publickey"]
    else
      if (!user_signed_in?)
        authenticate_user!
      end
    end

  end

  def valid_key(public_key, timestamp, hash)
    begin
      key = Apikey.find_by!(publickey: public_key)
      if (Digest::MD5.hexdigest(public_key + key.privatekey + timestamp) == hash.downcase)
        puts 'valid'
        return true
      end
      puts 'invalid'
      return false
    rescue
      return false
    end
  end


end
