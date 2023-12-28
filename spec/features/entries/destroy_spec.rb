feature 'Destroy entry' do
    let!(:entry) { create :entry }

    it 'User visits certain entry page' do
      expect do
        visit entry_path(entry)

        click_on I18n.t('entry.destroy')
      end.to change(Entry, :count).by -1
    end
end