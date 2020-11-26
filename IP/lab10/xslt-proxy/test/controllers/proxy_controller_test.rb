require 'test_helper'

class ProxyControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get proxy_input_url
    assert_response :success
  end

  test "should get output" do
    get proxy_output_url
    assert_response :success
  end

  test 'should get nil server' do
    get "#{proxy_output_url}?arr=&side=server"
    out = 'Invalid request parameters(arr = input nil)
'
    assert_equal assigns[:result], out
  end
  
  test 'should get random text server' do
    get "#{proxy_output_url}?arr=6sdf+4&side=server"
    out = 'Invalid request parameters(arr = don\'t numbers)
'
    assert_equal assigns[:result], out
  end


  test 'should get numbers server' do
    get "#{proxy_output_url}?arr=6+28+3+6&side=server"
    out = '<table>
<thead><tr>
<th>#</th>
<th>arrays</th>
</tr></thead>
<tbody><tr>
<th>1</th>
<th>
      6
      28
    </th>
</tr></tbody>
<tbody><tr>
<th>2</th>
<th>
      6
    </th>
</tr></tbody>
</table>
'
    assert_equal assigns[:result], out
  end

  test 'should get nil client' do
    get "#{proxy_output_url}?arr=&side=client-with-xslt"
    out = '<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="/browser_transform.xslt"?>
<hash>
  <message>Invalid request parameters(arr = input nil)</message>
</hash>
'
    assert_equal assigns[:result], out
  end

=begin 
  test 'should get random text client' do
    get "#{proxy_output_url}?arr=6sdf+4&side=client"
    out = '<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="/browser_transform.xslt"?>
<hash>
  <message>Invalid request parameters(arr = input nil)</message>
</hash>
'
  p assigns[:result]
    assert_equal assigns[:result], out

  test 'should get nil client-with-xslt' do
    get "#{proxy_output_url}?format=html&arr=&side=client-with"
    out = 'Invalid request parameters(arr = input nil)
'
    assert_equal assigns[:result], out
  end
  
  test 'should get random text client-with-xslt' do
    get "#{proxy_output_url}?arr=6sdf+4&side=client-with"
    out = 'Invalid request parameters(arr = don\'t numbers)
'
    assert_equal assigns[:result], out
  end
=end
end
