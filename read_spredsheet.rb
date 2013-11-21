require 'spreadsheet'

def parse file
  data =  Spreadsheet.open(file)
  countries = []
  data.worksheets.each { |sheet| countries.push sheet.row(0) }
end