require_relative "game"

describe Game do
  let(:game) { Game.new("fudge") }

  it "receives input to create the answer and creates an underscore in place of each letter of the answer" do
    expect(game.answer).to eq ["f", "u", "d", "g", "e"]
    expect(game.hidden_answer).to eq [ "_", "_", "_", "_", "_" ]
  end

  it "if a guess is correct, the underscore where the letter belongs will be replaced by said letter" do
    game.check_answer("f")
    expect(game.hidden_answer).to eq [ "f", "_", "_", "_", "_" ]
  end


end
