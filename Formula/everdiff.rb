class Everdiff < Formula
  desc "Tool for fancy diffing of YAML"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.11"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "39370dcc403328e41ff51dca965ea5425f135d53b3baef4a4583dcfad7b4b4a3"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "195748c951bbbcf75a9f2a96b3a7d20ef55ec766b88d78e17d23eadf631a6b18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "f992145d1da191ef0d1c919cf10c261dc62bb95a52db5367a966a3a01339fee9"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "93623e4552fd4efff11724fd09afb969322880a9feef0a1d7f8577330dd7a379"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
