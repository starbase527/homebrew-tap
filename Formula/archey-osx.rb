class ArcheyOsx < Formula
  desc "Graphical system information display for macOS"
  homepage "https://github.com/starbase527/archey-osx"
  license "GPL-2.0-or-later"
  head "https://github.com/starbase527/archey-osx.git", branch: "master"

  depends_on :macos

  conflicts_with "archey", because: "this is a fork of the archey formula"
  conflicts_with "archey4", because: "both install `archey` binaries"

  def install
    bin.install "bin/archey"
  end

  test do
    assert_match "Archey OS X 1", shell_output("#{bin}/archey --help")
  end
end
