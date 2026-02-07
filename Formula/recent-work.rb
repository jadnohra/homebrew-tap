class RecentWork < Formula
  desc "Watches your projects, symlinks recent files to ~/RecentWork"
  homepage "https://github.com/jadnohra/recent-work"
  url "https://github.com/jadnohra/recent-work/releases/download/v1.0.0/recent-work-macos-universal.tar.gz"
  sha256 "UPDATE_AFTER_FIRST_RELEASE"
  license "MIT"

  def install
    bin.install "recent-work"
  end

  test do
    system "#{bin}/recent-work", "--help"
  end
end
