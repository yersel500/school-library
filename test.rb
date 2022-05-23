require 'json'

data = JSON.parse(File.read('data.json'))

p data['books']
