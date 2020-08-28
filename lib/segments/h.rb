# encoding: UTF-8
class HL7::Message::Segment::H < HL7::Message::Segment
  weight( -1 )
  add_field :delimiters
  add_field :message_control_id
  add_field :access_password
  add_field :sender
  add_field :sender_address
  add_field :reserved
  add_field :sender_telephone
  add_field :sender_characteristics
  add_field :receiver_id
  add_field :comment
  add_field :processing_id
  add_field :version_id
  add_field :time do |value|
    convert_to_ts(value)
  end

end