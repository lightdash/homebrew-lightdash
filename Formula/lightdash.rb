class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.326.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.326.0/lightdash-cli-2.326.0-macos-arm64.tar.gz"
      sha256 "843c7ae2952d5ecaaceacb9766567464d8fc8cf80d2472e09301e80c066caf60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.326.0/lightdash-cli-2.326.0-macos-x64.tar.gz"
      sha256 "76361e12495233a1bb36ed2940e4fc6fc023db22eb064758583666e10908aaed"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.326.0/lightdash-cli-2.326.0-linux-x64.tar.gz"
    sha256 "50ae10be9955030fa0846f09c8e4c9e46dfdcdfb98c9f418ae92a0c059cd54c7"

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
