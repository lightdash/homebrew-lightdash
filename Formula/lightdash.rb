class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.473.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.473.1/lightdash-cli-2.473.1-macos-arm64.tar.gz"
      sha256 "f5c60dc171eec0cfa9c8c04be58df8daf606f795a7dff8e321bfcf2769041bae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.473.1/lightdash-cli-2.473.1-macos-x64.tar.gz"
      sha256 "d45b5224bd5973a16c1f85a452a409c92f3068d790606fb7b9d8ad991d545b39"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.473.1/lightdash-cli-2.473.1-linux-x64.tar.gz"
    sha256 "ac0940b888f750c2a4606bfb60ad98f02fcb842d48944e6d0e3d8e5a0e8f739d"

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
