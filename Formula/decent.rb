class Decent < Formula
  desc "Decent render network node supervisor CLI"
  homepage "https://github.com/decent-render/decent-render"
  url "https://github.com/decent-render/decent-render/releases/download/v0.0.6/decent-aarch64-apple-darwin.tar.xz"
  sha256 "59183ef7e77811424a685a1c2b7f719a9a361bb5e4849ebbc10ba8b4e2ca6c38"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "decent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decent --version")
  end
end
