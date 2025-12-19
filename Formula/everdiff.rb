class Everdiff < Formula
  desc "Fancy YAML diffing"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.4-pre8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "ee3af7d0792003822fa69530ac5746271e57f5041e5728f7dc315a1462defb95"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "36c744477b29f3d9322cf528eb779d100f3e6b68a495b293beec7f63b3bff0e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "eadea96676d1ad639084d4a9e4895785b5e077123e5ed52d6ee95ddc0890aa06"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "b090b1dbe279ad511a40427d87a9070db133de6974cd6b571e7fc462bc889bae"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
