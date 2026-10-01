class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.407.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.407.2/lightdash-cli-2.407.2-macos-arm64.tar.gz"
      sha256 "4d5d6892fe882f8059a8cfac20417b06e311b061cc5b53fb156d782187a666eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.407.2/lightdash-cli-2.407.2-macos-x64.tar.gz"
      sha256 "42605bcd8bfa7a9c21a6b6407d40f2c469db050e207845d0641004392f7256db"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.407.2/lightdash-cli-2.407.2-linux-x64.tar.gz"
    sha256 "6d49a8f2259f172e508a1be8372eff1f0a7cb0edd84eaa48581b6e3e291080df"

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
