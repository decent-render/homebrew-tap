class DecentNode < Formula
  desc "DEPRECATED: use 'decent' instead — compatibility shim that forwards to decent"
  homepage "https://github.com/decent-render/decent-render"
  url "https://github.com/decent-render/decent-render/releases/download/v0.0.5/decent-node-aarch64-apple-darwin.tar.xz"
  sha256 "3c0287186d2e642b98d0814dc6732ec5efba3ec5efec6f7f32d00c9ac6b970b4"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "decent-node"
  end

  test do
    assert_match "decent", shell_output("#{bin}/decent-node --help 2>&1", 1)
  end
end