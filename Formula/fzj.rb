class Fzj < Formula
  desc "Fuzzy search over JSON"
  homepage "https://github.com/felipesere/fzj"
  version "0.1.4"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-aarch64.tar.gz"
      sha256 "d416ae16f527be5cf8cbe07b2721fb7d7be5c939fcd6d7dc041213dc865402ed"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-x86_64.tar.gz"
      sha256 "174637b653024937b8a20e98cfd9aa6c74d7662fef45d532e452765236552895"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-aarch64.tar.gz"
      sha256 "19191c784bda88797c2b30136ac917ec4739822ae8c4f3c7d44306b40082e16e"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-x86_64.tar.gz"
      sha256 "8c6410038ed73d50763efa6b1371f533e84cf03ee6f5964883a925b99ca856c6"
    end
  end

  def install
    bin.install "fzj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fzj --version 2>&1", 2)
  end
end
