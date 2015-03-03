app = proc do |env|
  body = "<h1>oh hai #{rand}</h1>\n"
  [
    200,
    {
      'Content-Length' => body.length.to_s,
      'Content-Type' => 'text/html;charset=utf-8'
    },
    [body]
  ]
end

run app
