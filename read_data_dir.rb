
# url_base up to data and including Data...
def read_data_dir dir, url_base
  url_base = url_base + '/' unless url_base[-1] == '/'
  countries = []
  Dir.chdir(dir)
  Dir.entries(Dir.pwd)[2..-1].each do |country|
    Dir.chdir(country) do
      h = { flag_url: url_base + country + '/' + 'flag.jpeg' }
      h = h.merge YAML.parse(File.read('description.yml')).to_ruby
      countries.push h
    end
  end
  countries
end