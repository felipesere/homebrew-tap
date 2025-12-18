class everdiff < Formula
  desc "Tool for fancy diffing of YAML"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/nutag-macos-aarch64.tar.gz"
      sha256 "7add2d97d98a9ab30d5a8cd7ebc9e39c8a09003980b059e743d8b64412fab98f"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/nutag-macos-x86_64.tar.gz"
      sha256 "be5a96ab0ea48f916c1f9e0f2a23cc4f78115c9e32c01fc905d26b227dbb917b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/nutag-linux-aarch64.tar.gz"
      sha256 "bfbb09f4bebc2da835c4036a7c3ae6a0f3b2d177d73f3a4f9659aae8cfd2f0a4"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/nutag-linux-x86_64.tar.gz"
      sha256 "be5a96ab0ea48f916c1f9e0f2a23cc4f78115c9e32c01fc905d26b227dbb917b"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
