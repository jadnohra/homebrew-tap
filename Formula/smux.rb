class Smux < Formula
  desc "Simple tmux — human-friendly session management"
  homepage "https://github.com/jadnohra/smux"
  url "https://github.com/jadnohra/smux/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "fc29903885af8093c2eb61428adf886c32698aab363438c0a5f0af6a05b814c7"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "smux"
  end

  test do
    assert_match "simple tmux", shell_output("#{bin}/smux help")
  end
end
