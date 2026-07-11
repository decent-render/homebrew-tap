class Decent < Formula
  desc "Decent render network node supervisor CLI"
  homepage "https://github.com/decent-render/decent-render"
  url "https://github.com/decent-render/decent-render/releases/download/v0.0.5/decent-aarch64-apple-darwin.tar.xz"
  sha256 "776d511b688ada2fa0aa13400d1749aa89f571b25fc4d9401bca3b4a4e25906a"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "decent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decent --version")
  end
end