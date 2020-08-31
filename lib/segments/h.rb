# encoding: UTF-8
class HL7::Message::Segment::H < HL7::Message::Segment
  weight( -1 )
  add_field :enc_chars
  add_field :message_control_id
  add_field :access_password
  add_field :sending_app
  add_field :sending_facility
  add_field :reserved
  add_field :sending_telephone
  add_field :sending_characteristics
  add_field :receiver_id
  add_field :comment
  add_field :processing_id
  add_field :version_id
  add_field :time do |value|
    convert_to_ts(value)
  end

end