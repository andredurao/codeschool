assert_response :success # 2XX
assert_response 200

assert_response :redirect # 3XX
assert_response :missing # 404
assert_response :error # 5XX


# HTTP stack symbol used by Rack
assert_response :accepted
assert_response :moved_permanently
assert_response :service_unavailable


# Redireciton
assert_redirected_to rool_url
assert_tag 'a', attributes { href: rool_url }
assert_no_tag 'div', attributes { id: 'zombie' }
assert_select 'h1', 'Twitter for Zombies'

