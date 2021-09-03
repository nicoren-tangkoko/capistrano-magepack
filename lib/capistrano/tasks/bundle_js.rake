namespace "capistrano-magepack" do
    desc 'bundle js files'
    task :bundle_js do
      on roles(:app) do
        within release_path do
          info 'magepack generate --cms-url="#{ENV['HOME_URL']}" --category-url="#{ENV['CATEGORY_URL']}" --product-url="#{ENV['PRODUCT_URL']}"'
          execute 'magepack generate --cms-url="#{ENV['HOME_URL']}" --category-url="#{ENV['CATEGORY_URL']}" --product-url="#{ENV['PRODUCT_URL']}"'
          execute 'magepack bundle'
        end
      end
    end
  end
