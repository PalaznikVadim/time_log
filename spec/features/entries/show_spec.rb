feature 'Visit show entry' do
  let(:entry) { create :entry }

  scenario 'User visits certain entry page' do
    visit entry_path(entry)

    expect(page).to have_content(entry.comment)
  end
end