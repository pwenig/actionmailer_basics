require 'spec_helper'

describe MeetingMailer do
  describe 'message when meeting is scheduled' do
    let(:message) { MeetingMailer.meeting_scheduled }
    it 'comes from the proper user' do
      expect(message.from).to eq ["meetings@example.com"]
    end

    it 'goes to the proper user' do
      expect(message.to).to eq ['employees@example.com']
    end

    it 'has the proper subject' do
      expect(message.subject).to eq "A meeting has been scheduled!"
    end
  end
end