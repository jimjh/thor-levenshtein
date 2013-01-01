require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Thor::Levenshtein do

  describe '#invoke' do

    it "should suggest the closest command if the task can't be found" do
      content = capture(:stderr) { A.start ['dscribe'] }
      expect(content).to match(/Did you mean this\?\s+describe/)
    end


  end

end
