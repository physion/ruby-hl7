# encoding: UTF-8
require 'spec_helper'

describe HL7::Message::Segment::L do
  context 'general' do
    before :all do
      @base = "L|1|F"
    end

    it "sets values correctly" do
      h = HL7::Message::Segment::L.new @base
      expect(h.set_id).to eq "1"
      expect(h.termination_code).to eq "F"
    end

    it 'validates the termination_code element' do
      l = HL7::Message::Segment::L.new
      expect do
        vals = %w[N I F] + [ nil ]
        vals.each do |x|
          l.termination_code = x
        end
        l.termination_code = ""
      end.not_to raise_error

      expect do
        ["TEST", "A", 1, 2].each do |x|
          l.termination_code = x
        end
      end.to raise_error(HL7::InvalidDataError)
    end
  end
end