class Fzj < Formula
  desc "Fzf-like command-line tool that operates on JSON"
  homepage "https://github.com/felipesere/fzj"
  version "0.1.2-pre7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-aarch64.tar.gz"
      sha256 "46408533296842676f9c737f85c40b0fb2f596a4268abebc08e311baafd137eb"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-x86_64.tar.gz"
      sha256 "b8277a2a1069ae95be06a77d4e0ee8dbb440ab32b5d7febf229035110d620c71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-aarch64.tar.gz"
      sha256 "1afa7293ee39fecf1bc2079b38706b88dd3b505c88f1c0103d3b20b8502bd282"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-x86_64.tar.gz"
      sha256 "b4f1349c1dd2fdccdeefa14ac4c8c9443f629b75aa5823968384d017db5b233f"
    end
  end

  def install
    bin.install "fzj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fzj --version 2>&1", 2)
  end
end
