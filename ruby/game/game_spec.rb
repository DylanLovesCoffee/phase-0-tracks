require_relative "game"

describe Game do
  let(:game) { Game.new("fudge") }

  it "receives input to create the answer and creates an underscore in place of each letter of the answer" do
    expect(game.answer).to eq ["f", "u", "d", "g", "e"]
    expect(game.hidden_answer).to eq [ "_", "_", "_", "_", "_" ]
  end

  it "verifies a correct guess, and the hidden answer where the letter belongs will be replaced by that letter" do
    game.check_answer("f")
    expect(game.hidden_answer).to eq [ "f", "_", "_", "_", "_" ]
  end

  it "verifies a guess is incorrect, and the hidden answer will not change" do
    game.check_answer("r")
    expect(game.hidden_answer).to eq [ "_", "_", "_", "_", "_" ]
  end

  it "increases the guess counter by 1 for every unique guess" do
    game.check_answer("r")
    game.check_answer("f")
    expect(game.guess_count).to eq 2
  end

  it "will not increase the guess counter if a guess has already been used" do
    game.check_answer("x")
    expect(game.guess_count).to eq 1
    game.check_answer("x")
    expect(game.guess_count).to eq 1
  end

  it "receives words with duplicate letters, and replaces all the duplicate letters in the hidden answer" do
    bonobos_game = Game.new("bonobos")
    bonobos_game.check_answer("o")
    expect(bonobos_game.hidden_answer).to eq [ "_", "o", "_", "o", "_", "o", "_" ]
  end

end
