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

  def post_install
    tmux_conf = Pathname.new(Dir.home)/".tmux.conf"
    unless tmux_conf.exist?
      tmux_conf.write("set -g mouse on\n")
      ohai "Created ~/.tmux.conf with mouse support"
    end
  end

  test do
    assert_match "simple tmux", shell_output("#{bin}/smux help")
  end
end
