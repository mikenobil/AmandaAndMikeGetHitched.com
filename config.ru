use Rack::Static, 
  :urls => ["/assets", "/data1", "/engine1", "/jquery-1.8.3.js", "/stylesheet.css", "/rsvp.html", "/what.html", "/when.html", "/where.html", "/who.html", "/why.html", "/index.html"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
