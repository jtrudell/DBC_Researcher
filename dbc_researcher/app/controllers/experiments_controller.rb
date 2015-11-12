class ExperimentsController < ApplicationController
  def show
  end

  def index
    @experiments = Experiment.all
  end
  def new
    @experiment = Experiment.new
  end
  def create
    puts "----------------"
    puts params
    puts "----------------"
    redirect_to 'http://google.com'
  end

end
