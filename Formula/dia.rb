class Fzj < Formula
  desc "Calendar display tool"
  homepage "https://github.com/felipesere/dia"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-aarch64.tar.gz"
      sha256 "abee8ec8591c08b5ebd554ef0ac314d722a97c44419d5faf6619e0586a85513f"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-x86_64.tar.gz"
      sha256 "46e424ed8cc4866ddd5f00e62e6f17b0ec32f401dcb9416aca8882e9a1bc8b9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-aarch64.tar.gz"
      sha256 "fcbc29885c04b82c2b2483f9cf69f6532eca48b23922a26be6453c2887fe5f03"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-x86_64.tar.gz"
      sha256 "5808d7147a56ce8c9edd50d8c53db3899393756a8b162bc57ffff49626bf1cfd"
    end
  end

  def install
    bin.install "dia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dia --version 2>&1", 2)
  end
end
