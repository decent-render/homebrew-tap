class DecentNode < Formula
  desc "DEPRECATED: use 'decent' instead — compatibility shim that forwards to decent"
  homepage "https://github.com/decent-render/decent-render"
  url "https://github.com/decent-render/decent-render/releases/download/v0.0.6/decent-node-aarch64-apple-darwin.tar.xz"
  sha256 "8495bb5fea42b38283933f61cedaffb238da7a03fe88c1506bda637dfeb279f8"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "decent-node"
  end

  test do
    assert_match "decent", shell_output("#{bin}/decent-node --help 2>&1", 1)
  end
end
