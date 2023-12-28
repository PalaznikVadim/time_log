require 'i18n/backend/pluralization'

I18n::Backend::Simple.include(I18n::Backend::Pluralization)
I18n.backend.store_translations :ru, i18n: { plural: { rule: lambda { |n| :one } } }