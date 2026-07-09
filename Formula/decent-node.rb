class DecentNode < Formula
  desc "Decent render network node supervisor CLI"
  homepage "https://github.com/decent-render/decent-render"
  url "https://github.com/decent-render/decent-render/releases/download/v0.0.3/decent-node-aarch64-apple-darwin.tar.xz"
  sha256 "b2bf700ef63dd460d4bdd9d05a539956b2b651ffae65f95f3bb1577ac7f3e86a"
  version "0.0.3"
  license "Apache-2.0"

  # Apple-Silicon only: the render payloads are arm64-compiled, so an Intel Mac
  # can't run them. Refuse install on non-arm64 instead of failing at runtime.
  depends_on arch: :arm64

  def install
    bin.install "decent-node"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decent-node --version")
  end
end
