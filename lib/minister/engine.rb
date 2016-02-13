module Minister
  # Define the Minister Rails Engine
  class Engine < ::Rails::Engine
    isolate_namespace Minister

    initializer 'minister routing' do
      require 'minister/routing'

      ActionDispatch::Routing::Mapper.send(:include, Minister::Routing)
    end
  end
end
