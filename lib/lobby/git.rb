module Lobby
  class Git

    def self.prepare_codebase(repo_path, commit)
      repo_name = repo_path.split('/')[1]
      
      if Dir.exists? "tmp/codebases/#{repo_name}"
        `cd tmp/codebases/#{repo_name}; git fetch; git reset --hard #{commit}`
      else
        `cd tmp/codebases; git clone git@github.com:#{repo_path}; cd #{repo_name}; git git reset --hard #{commit}`
      end
      
    end

  end
end