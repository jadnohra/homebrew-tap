class RecentWork < Formula
  desc "Watches your projects, symlinks recent files to ~/RecentWork"
  homepage "https://github.com/jadnohra/recent-work"
  url "https://github.com/jadnohra/recent-work/releases/download/v1.0.0/recent-work-macos-universal.tar.gz"
  sha256 "b0172c270407a913e4b671786488ecc8e14a6d97b449f9372db43a50b9f4e46e"
  license "MIT"

  def install
    bin.install "recent-work"
  end

  test do
    system "#{bin}/recent-work", "--help"
  end
end
