# encoding: UTF-8
class HL7::Message::Segment::L < HL7::Message::Segment
  weight 1
  add_field :set_id
  add_field :termination_code do |code|
    unless /^[NIF]$/.match(code) || code == nil || code == ""
      raise HL7::InvalidDataError.new( "bad termination code value (not N|I|F)" )
    end
    code = "" unless code
    code
  end
end
