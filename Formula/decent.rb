class Decent < Formula
  desc "Decent render network node supervisor CLI"
  homepage "https://github.com/decent-render/decent-render"
  url "https://github.com/decent-render/decent-render/releases/download/v0.0.7/decent-aarch64-apple-darwin.tar.xz"
  sha256 "236614da95bf207ffc81b18b902402dd52af29da2c8bbcfe4c8d4ec00de85f18"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "decent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decent --version")
  end
end
