class Smux < Formula
  desc "Simple tmux — human-friendly session management"
  homepage "https://github.com/jadnohra/smux"
  url "https://github.com/jadnohra/smux/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "3ae357b87eb4260b6181953432aadaf92561b28cbae6b4fcc98f34b674329dba"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "smux"
  end

  test do
    assert_match "simple tmux", shell_output("#{bin}/smux help")
  end
end
