#! /usr/bin/ruby

str='/2010/10/'

def repalceString(f, str)
  f.rewind
  body = f.read
  body = body.gsub(str) do |tmp|
    '/2009/10/'
  end

  f.rewind
  f.puts body
end

files = Dir.glob('*.markdown')

files.each do |item|
  open(item, "r+") do |f|
    f.flock(File::LOCK_EX)
    repalceString(f, str)
    f.truncate(f.tell)
  end
end
