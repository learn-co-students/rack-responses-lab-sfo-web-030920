class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now
    tim2 = Time.new(2015, 11, 27, 14, 30)

    if tim2 > time
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
    resp.finish
  end
end
