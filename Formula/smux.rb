class Smux < Formula
  desc "Simple tmux — human-friendly session management"
  homepage "https://github.com/jadnohra/smux"
  url "https://github.com/jadnohra/smux/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "b48133f7f830ac61fcf623438739659464c78ab9d4aa6c844bb47d50c2247ea8"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "smux"
  end

  def caveats
    <<~EOS
      To enable mouse scrolling in tmux, run:
        echo 'set -g mouse on' >> ~/.tmux.conf
    EOS
  end

  test do
    assert_match "simple tmux", shell_output("#{bin}/smux help")
  end
end
