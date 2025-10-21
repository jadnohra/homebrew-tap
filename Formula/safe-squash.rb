class SafeSquash < Formula
  desc "Simple, robust tool to squash all commits on your branch into one"
  homepage "https://github.com/jadnohra/safe-squash"
  url "https://github.com/jadnohra/safe-squash/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "13a5127f7c332fe79707d0c6f4d4b75b0824498a8c232899788976126c346357"
  license "MIT"

  def install
    bin.install "safe-squash"
  end

  test do
    assert_match "safe-squash", shell_output("#{bin}/safe-squash --help")
  end
end
