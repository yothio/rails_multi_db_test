class DatabaseSwitcher
  def initialize(app)
    @app = app
  end

  def call(env)
    switch_database(env)
    @app.call(env)
  end

  private

  def switch_database(env)
    request = Rack::Request.new(env)
    db = case request.path
         when %r{^/hoge}
           :default
         when %r{^/fuga}
           :renewal
         else
           :default
         end

    ActiveRecord::Base.establish_connection(db)
  end
end
