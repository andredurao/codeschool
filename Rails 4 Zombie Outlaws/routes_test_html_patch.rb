class WeaponsControllerTest < ActionController::TestCase
  test "updates weapon" do
    patch :update, zombie_id: @zombie, weapons: { name: 'Scythe' }
    assert_redirected_to zombie_url(@zombie)
  end
end
