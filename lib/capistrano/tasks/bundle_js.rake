namespace "capistrano-magepack" do
    desc 'bundle js files'
    task :bundle_js do
      on roles(:app) do
          home_url = ENV['HOME_URL']
          product_url = ENV['PRODUCT_URL']
          category_url = ENV['CATEGORY_URL']
          waiting_time = ENV['WAITING_TIME']
          info "Wait #{waiting_time} seconds"
          execute "sleep #{waiting_time}"
          info "magepack generate --cms-url='#{home_url}' --category-url='#{category_url}' --product-url='#{product_url}'"
          execute "cd '#{release_path}'; magepack generate --cms-url='#{home_url}' --category-url='#{category_url}' --product-url='#{product_url}'"
          execute "cd '#{release_path}'; magepack bundle"
      end
    end
  end
