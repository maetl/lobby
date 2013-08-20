require 'json'
require 'sinatra'

module Lobby
  class Server < Sinatra::Base
    
    before do
      content_type 'application/json'
    end
    
    get '/strategies' do
      JSON.fast_generate([{
        :strategy => 'CapDeploy',
        :description => 'Runs a Capistrano deployment, using the Capfile provided in the given repo.'
      }])
    end
    
    get '/deploy' do
      repo_path = params[:repo]
      repo_name = repo_path.split('/')
      commit = params[:commit]
      
      Git.prepare_codebase(repo_path, commit)
      Cap.deploy(repo_name)
    end
    
  end
end