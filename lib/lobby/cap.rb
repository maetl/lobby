module Lobby
  class Cap
    def self.deploy(repo_name, target="production")
      `cd tmp/codebases/#{repo_name}; cap #{target} deploy`
    end
  end
end