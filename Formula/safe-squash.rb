class SafeSquash < Formula
  desc "Simple, robust tool to squash all commits on your branch into one"
  homepage "https://github.com/jadnohra/safe-squash"
  url "https://github.com/jadnohra/safe-squash/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "cb50aa061790677dad04409b9156a3f417b71cc360ae250aaa5871732d3583b8"
  license "MIT"

  def install
    bin.install "safe-squash"
  end

  test do
    assert_match "safe-squash", shell_output("#{bin}/safe-squash --help")
  end
end
