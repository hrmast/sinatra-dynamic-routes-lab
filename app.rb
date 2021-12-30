require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @str = ""
    params[:number].to_i.times {@str << params[:phrase]}
    @str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @sentence
  end

  get '/:operation/:number1/:number2' do 
        # binding.pry
      if params[:operation] == "add"
        @add = params[:number1].to_i + params[:number2].to_i
        @add.to_s
      elsif params[:operation] == "subtract"
        @subt = params[:number2].to_i - params[:number1].to_i
        @subt.to_s
      elsif params[:operation] == "multiply"
        @mult = params[:number1].to_i * params[:number2].to_i
        @mult.to_s
      else params[:operation] == "divide"
        @div = params[:number1].to_i / params[:number2].to_i
        @div.to_s
      end
    end
end