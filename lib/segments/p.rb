# encoding: UTF-8
class HL7::Message::Segment::P < HL7::Message::Segment
  weight 1
  add_field :set_id
  add_field :patient_id
  add_field :patient_id_list
  add_field :alt_patient_id
  add_field :patient_name
  add_field :mother_maiden_name
  add_field :patient_dob do |value|
    convert_to_ts(value)
  end
  add_field :admin_sex do |sex|
    unless /^[FMOUANC]$/.match(sex) || sex == nil || sex == ""
      raise HL7::InvalidDataError.new( "bad administrative sex value (not F|M|O|U|A|N|C)" )
    end
    sex = "" unless sex
    sex
  end
end