# encoding: UTF-8
class HL7::Message::Segment::O < HL7::Message::Segment
  weight 1
  add_field :set_id
  add_field :specimen_id
  add_field :instrument_id
  add_field :test_id
  add_field :priority
  add_field :request_date do |value|
    convert_to_ts(value)
  end
  add_field :specimen_collection_date_time do |value|
    convert_to_ts(value)
  end
end
