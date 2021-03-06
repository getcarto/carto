describe Carto::Models::Plan, type: :model do
  let(:plan) { create(:plan) }

  it_behaves_like 'decoratable'

  it 'requires a trip' do
    expect(plan).to validate_presence_of :trip
  end

  it 'belongs to a trip' do
    expect(plan).to belong_to :trip
  end
end
