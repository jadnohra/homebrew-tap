class Smux < Formula
  desc "Simple tmux — human-friendly session management"
  homepage "https://github.com/jadnohra/smux"
  url "https://github.com/jadnohra/smux/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7a13784d7679beea21c54fa801198f95136744c5205383ec5384350b1892b27a"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "smux"
  end

  test do
    assert_match "simple tmux", shell_output("#{bin}/smux help")
  end
end
