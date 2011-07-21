require 'test_helper'

class NewControllerTest < ActionController::TestCase
  test "should get betonia" do
    get :betonia
    assert_response :success
  end

  test "should get caractere" do
    get :caractere
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get despre" do
    get :despre
    assert_response :success
  end

  test "should get despre_culori" do
    get :despre_culori
    assert_response :success
  end

  test "should get despre_materii_prime" do
    get :despre_materii_prime
    assert_response :success
  end

  test "should get parteneri" do
    get :parteneri
    assert_response :success
  end

  test "should get proiecte" do
    get :proiecte
    assert_response :success
  end

  test "should get proiecte_aveti_o_idee" do
    get :proiecte_aveti_o_idee
    assert_response :success
  end

  test "should get proiecte_blaturi" do
    get :proiecte_blaturi
    assert_response :success
  end

  test "should get proiecte_monstre" do
    get :proiecte_monstre
    assert_response :success
  end

  test "should get proiecte_placaje" do
    get :proiecte_placaje
    assert_response :success
  end

  test "should get raft" do
    get :raft
    assert_response :success
  end

end
