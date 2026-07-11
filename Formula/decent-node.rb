class DecentNode < Formula
  desc "DEPRECATED: use 'decent' instead — compatibility shim that forwards to decent"
  homepage "https://github.com/decent-render/decent-render"
  url "https://github.com/decent-render/decent-render/releases/download/v0.0.7/decent-node-aarch64-apple-darwin.tar.xz"
  sha256 "14233bc622d24439fd0c3df7082be8916fb1422c4f3edd858f4b773f7033a23f"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "decent-node"
  end

  test do
    assert_match "decent", shell_output("#{bin}/decent-node --help 2>&1", 1)
  end
end
