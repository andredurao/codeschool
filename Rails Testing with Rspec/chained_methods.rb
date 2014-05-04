it { should validate_presence_of(:name).with_message('oh noes') }
it { should ensure_inclusion_of(:age).in_range(18..25) }
it { should have_many(:weapons).dependant(:destroy) }
it { should have_many(:weapons).class_name(OneHandedWeapons) }

it 'has many Tweets' do
  should have_many(:tweets).
    dependent(:destroy).
    class_name(Tweet)
end
