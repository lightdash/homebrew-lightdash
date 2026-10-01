class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.4/lightdash-cli-2.405.4-macos-arm64.tar.gz"
      sha256 "06afffebe4f204dd1efef21e30ae51847acb8c7b501d182ce66783c597e16a56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.4/lightdash-cli-2.405.4-macos-x64.tar.gz"
      sha256 "72e1018219dc6247803b2bdbb3e3790cf91298c94bdd74d56234577382377d98"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.4/lightdash-cli-2.405.4-linux-x64.tar.gz"
    sha256 "7a6effb0c4314648c19ef526ac181eef5611193e695dbd35b88db199aab68a14"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
