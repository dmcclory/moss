require 'json'

class Moss
  @@mosses = "#{ENV['HOME']}/.mosses"


  data = begin File.read(@@mosses) rescue "{}" end
  @@data = JSON.parse(data)


  def self.pairs
    @@data
  end

  def self.save(name, url)
    @@data[name] = url
    File.write(@@mosses, JSON.dump(@@data))
  end

  def self.clear(name)
    @@data.delete name
    File.write(@@mosses, JSON.dump(@@data))
  end

  def self.get(name, path)
    url = @@data[name]
    `wget #{url} -P #{path}` if url
  end
end
