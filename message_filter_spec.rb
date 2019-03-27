# 相対パス的にrequire
require_relative 'message_filter'
describe MessageFilter, 'with argument "foo"' do
  before do
    @filter = MessageFilter.new('foo')
  end
  subject {@filter}
  it{
    is_expected.to be_detect('hello from foo')
  }
  
  it{
    is_expected.to_not be_detect('hello,world')
  }
end
