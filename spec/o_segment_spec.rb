# encoding: UTF-8
require 'spec_helper'

describe HL7::Message::Segment::O do
  context 'general' do
    before :all do
      @base = "O|1|SID001^N^01^5||^^^f1^sIgE^1|||20010226090000"
    end

    it "sets values correctly" do
      o = HL7::Message::Segment::O.new @base
      expect(o.set_id).to eq "1"
      expect(o.specimen_id).to eq "SID001^N^01^5"
      expect(o.instrument_id).to eq ""
      expect(o.test_id).to eq "^^^f1^sIgE^1"
      expect(o.priority).to eq ""
      expect(o.request_date).to eq ""
      expect(o.specimen_collection_date_time).to eq "20010226090000"
    end
  end
end

