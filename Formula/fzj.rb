class Fzj < Formula
  desc "Fzf-like command line tool that takes JSON as input, allows the user to select, and then outputs JSON again."
  homepage "https://github.com/felipesere/fzj"
  version "0.1.2-pre5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-aarch64.tar.gz"
      sha256 "2cfdd312621408ea63e026de12ce7eb7b029301ea0d63846dbc7120bd9f87f4b"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-x86_64.tar.gz"
      sha256 "0d1c3561fc68013d95d47fb998de9435ffdccfc8db49385f55f2842169169fd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-aarch64.tar.gz"
      sha256 "a00eec1e44ad6ce0855451f89378dc143fbdf0f34c495d8d9207721354340126"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-x86_64.tar.gz"
      sha256 "a5c0eddc39a227722266098d28aac7d7b13d90c7e13b70bb7f66faeadb8cf13f"
    end
  end

  def install
    bin.install "fzj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fzj --version 2>&1", 2)
  end
end
