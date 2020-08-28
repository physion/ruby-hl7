# encoding: UTF-8
require 'spec_helper'

describe HL7::Message::Segment::H do
  context 'general' do
    before :all do
      @base = "H|\\^&|||Phadia.Prime^1.2.0^^4.00|||||||P|1|20131004080000"
    end

    it "sets values correctly" do
      h = HL7::Message::Segment::H.new @base
      expect(h.delimiters).to eq "\\^&"
      expect(h.message_control_id).to eq ""
      expect(h.access_password).to eq ""
      expect(h.sender).to eq "Phadia.Prime^1.2.0^^4.00"
      expect(h.sender_address).to eq ""
      expect(h.reserved).to eq ""
      expect(h.sender_telephone).to eq ""
      expect(h.sender_characteristics).to eq ""
      expect(h.receiver_id).to eq ""
      expect(h.comment).to eq ""
      expect(h.processing_id).to eq "P"
      expect(h.version_id).to eq "1"
      expect(h.time).to eq "20131004080000"
    end
  end
end