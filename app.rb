require 'sinatra'
require 'csv'

get '/' do
  erb :index
end

get '/todo' do
  @todos = ['Order canapes', 'Confirm event details with attendees', 'Book band']

  erb :todo
end

get '/schedule' do
  @schedule = [ ['8pm',    'Doors open'],
                ['8.30pm', 'Champagne and canapes served'],
                ['9pm',    'Speech'],
                ['9.30pm', 'Painting unveiled'],
                ['9.40pm', 'Live band plays'] ]

  erb :schedule
end

get '/rsvps' do
  @rsvps = CSV.read('rsvps.csv')


@rsvps.each do |reply|
  if reply.include = yes
    @acceptances << reply
  else
    @rejections << reply
  end

sum = 0

  @acceptances.each do |n|
    sum = sum + n
  end

sum1 = 0
@rejections.each do |p|
    sum1 = sum1 + p
  end


  @acceptance_count = sum
  @rejection_count  = sum1

  # TODO categorise rsvps into acceptances/rejections and count them


  erb :rsvps
end
end