# Adds good jsonizing to move
Move.class_eval do
  include ChatActions

  def text; self.notation ; end

  def to_json
    %Q|{event_type:move,event_id:m#{id},text:"#{notation}",board:#{board_after.to_json}}|
  end
end
