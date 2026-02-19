class Nutag < Formula
  desc "Small tool to create tags on Github"
  homepage "https://github.com/felipesere/nutag"
  version "0.1.4"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-aarch64.tar.gz"
      sha256 "75feaaed3a4a1abb9543dc7083a8e7191e22610604889a1a10565acea92f488e"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-x86_64.tar.gz"
      sha256 "d899b13b80702e08f4135adc981a0230f3918a415b4ff18ba2c8358754a70749"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-aarch64.tar.gz"
      sha256 "aa4920b588812038fd37cbb5491e6328e52a5bb7f6eb51076934307028036f73"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-x86_64.tar.gz"
      sha256 "8ea602498afa4e7b43ed342eb19fb0c3e0ccb002f80c5ea060a2bddabe0f786d"
    end
  end

  def install
    bin.install "nutag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nutag --version 2>&1", 2)
  end
end
