class Smux < Formula
  desc "Simple tmux — human-friendly session management"
  homepage "https://github.com/jadnohra/smux"
  url "https://github.com/jadnohra/smux/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "1ab9f508515357d03a40ba8222e447cedb55ef5208c51e29cf55d2c4c407e264"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "smux"
  end

  test do
    assert_match "simple tmux", shell_output("#{bin}/smux help")
  end
end
