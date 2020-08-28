# encoding: UTF-8
require 'spec_helper'

describe HL7::Message::Segment::P do
  context 'general' do
    before :all do
      @base = "P|1||333||LastName^FirstName^MiddleInitial^SR^NickName||19760228|F"
    end

    it 'validates the admin_sex element' do
      p = HL7::Message::Segment::P.new
      expect do
        vals = %w[F M O U A N C] + [ nil ]
        vals.each do |x|
          p.admin_sex = x
        end
        p.admin_sex = ""
      end.not_to raise_error

      expect do
        ["TEST", "A", 1, 2].each do |x|
          p.admin_sex = x
        end
      end.to raise_error(HL7::InvalidDataError)
    end

    it "sets values correctly" do
      p = HL7::Message::Segment::P.new @base
      expect(p.set_id).to eq "1"
      expect(p.patient_id).to eq ""
      expect(p.patient_id_list).to eq "333"
      expect(p.alt_patient_id).to eq ""
      expect(p.patient_name).to eq "LastName^FirstName^MiddleInitial^SR^NickName"
      expect(p.mother_maiden_name).to eq ""
      expect(p.patient_dob).to eq "19760228"
      expect(p.admin_sex).to eq "F"
    end
  end
end