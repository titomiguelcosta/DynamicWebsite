namespace :project do
    desc "Building project"
    task :building do
        on roles(:all) do |host|
            within release_path do
                execute :npm, 'install'
                execute :bower, 'install'
                execute :grunt, '--force'
            end
        end
    end
end