class Everdiff < Formula
  desc "Fancy YAML diffing"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.4-pre5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "1f67a9855d73f347909aaa1a1741b9d6c2c0ac24fab9117258c824f162eb398e"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "7e68b161597de21c12d6d42c7ff49687128d8966f96054f4f9c5a7e31df92fd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "ef3f57f9feecbb1ced5f72315de3dde056dc230bbc45067e65a81873f564e605"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "50052f9c0438dd512774c54a7d91608f4670745ac55375763aa4f3f80fe8d908"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
