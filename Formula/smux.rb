class Smux < Formula
  desc "Simple tmux — human-friendly session management"
  homepage "https://github.com/jadnohra/smux"
  url "https://github.com/jadnohra/smux/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fef98f1d7721db289d00593853e5f6ccdca9cb2d5d6e7ec1127f89c595a21a20"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "smux"
  end

  test do
    assert_match "simple tmux", shell_output("#{bin}/smux help")
  end
end
