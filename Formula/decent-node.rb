class DecentNode < Formula
  desc "Decent render network node supervisor CLI"
  homepage "https://github.com/decent-render/decent-render"
  url "https://github.com/decent-render/decent-render/releases/download/v0.0.4/decent-node-aarch64-apple-darwin.tar.xz"
  version "0.0.4"
  sha256 "f59d207b7d48273f734d09b77e9a4b4d95b1d432d8d8d80e5ed32d178f62ee87"
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
