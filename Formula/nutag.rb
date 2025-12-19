class Nutag < Formula
  desc "A small tool to create tags on Github"
  homepage "https://github.com/felipesere/nutag"
  version "0.1.2"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-aarch64.tar.gz"
      sha256 "11421128d41778e4373aa5e75df5fbed5f85f76b7768bd86c203779d0e2dec59"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-x86_64.tar.gz"
      sha256 "73294314afff4801a7b18e8f7464b310ba8d1d114aafdcc6cc3b1c8ad0c0c4f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-aarch64.tar.gz"
      sha256 "c5cfd0ec8de5218945a488f37d3393557988b280ab1468cbf9c4734c72d59b3f"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-x86_64.tar.gz"
      sha256 "1f556774343f836b13d342b67dec6720a84f9cffe6e1de05620a077ee3de6b65"
    end
  end

  def install
    bin.install "nutag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nutag --version 2>&1", 2)
  end
end
