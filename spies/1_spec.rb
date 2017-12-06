class User
  attr_accessor :messenger

  def initialize(messenger)
    @messenger = messenger
  end

  def notify(message)
    messenger.send_message(message)
  end
end

describe 'Spies' do
  it 'apenas observa, não retorna' do
    messenger = spy('Messenger Spy')
    user = User.new(messenger)

    user.notify('notified')

    expect(messenger).to have_received(:send_message).with('notified')
  end
end
