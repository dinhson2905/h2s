class TestsController < ApplicationController
    def index
        @tests = Hiragana.all
    end
    def new
        @test = Test.new
    end
    def create
        @hiragana = Hiragana.find(params[:hiragana_id])
        @test = @hiragana.tests.create(test_params)
        redirect_to hiragana_path(@hiragana)
    end
    def show
        @test = Test.find(params[:id])
        puts @test
    end
    
    private 
        def test_params
            params.require(:test).permit(:question, :answer_a, :answer_b, :answer_c, :answer_d, :correct_answer)
        end
end
