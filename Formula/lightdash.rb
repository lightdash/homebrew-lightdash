class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.96.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.96.1/lightdash-cli-3.96.1-macos-arm64.tar.gz"
      sha256 "6f22e743e4293d4b20db06550a0eb26bd86bb7f279365ecee3f4dd03e935eda8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.96.1/lightdash-cli-3.96.1-macos-x64.tar.gz"
      sha256 "746eb82c952328d454726ec271bc2fec23e9daad4619c0bcd7fa634c21ed8c50"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.96.1/lightdash-cli-3.96.1-linux-x64.tar.gz"
    sha256 "221a8fef61b080cc8527de33dcc09a7720aaa3870785ded3bb43ac4e9ea9cdee"

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
