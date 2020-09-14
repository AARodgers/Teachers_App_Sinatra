class SessionsController < ApplicationController

    get '/login' do
        erb :'sessions/login'
    end

    post '/sessions' do
        login(params[:email], params[:password])
        redirect '/homepage'
    end

    post '/logout' do
        logout!
        redirect '/teachersapp'
    end
end
