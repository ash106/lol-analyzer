require "test_helper"

class GamesControllerTest < ActionController::TestCase

  def setup
    @game = games(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Game.count') do
      post :create, game: {  }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  def test_show
    get :show, id: @game
    assert_response :success
  end

  def test_edit
    get :edit, id: @game
    assert_response :success
  end

  def test_update
    put :update, id: @game, game: {  }
    assert_redirected_to game_path(assigns(:game))
  end

  def test_destroy
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
