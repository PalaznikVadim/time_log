class ApplicationService
  extend Dry::Initializer
  include Dry::Monads[:do, :result]

  def self.call(...)
    new(...).call
  end
end