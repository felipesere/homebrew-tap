class Everdiff < Formula
  desc "Tool for fancy diffing of YAML"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.7"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "40e69b11b9dff824d488738d503a39db3c74998f46787d811c62393f069c1a5e"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "4ee76d75a4057c5232150d90dd2495e2de72afa0450a5504fb90fc56636823c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "738215b58bd3073301c6ae4e51eb7f5677f9fa517116f7e90eb53d02d38e5372"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "4513ca32137f97933dadbec4c188ee394058e7ec4d0e5d8fb95db36b6978e11b"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
