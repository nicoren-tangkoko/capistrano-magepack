namespace "capistrano-magepack" do
    desc 'bundle js files'
    task :bundle_js do
      on roles(:app) do
        within release_path do
          home_url = ENV['HOME_URL']
          product_url = ENV['PRODUCT_URL']
          category_url = ENV['CATEGORY_URL']
          info "magepack generate --cms-url='#{home_url}' --category-url='#{category_url}' --product-url='#{product_url}'"
          execute 'magepack generate --cms-url='#{home_url}' --category-url='#{category_url}' --product-url='#{product_url}'
          execute 'magepack bundle'
        end
      end
    end
  end
