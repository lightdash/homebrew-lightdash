class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.169.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.0/lightdash-cli-3.169.0-macos-arm64.tar.gz"
      sha256 "6f00aeccd604fe6b2b21a5282c6518d471b001340b9e9bc1db19b05c14526abc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.0/lightdash-cli-3.169.0-macos-x64.tar.gz"
      sha256 "afe0d601f7125ec8b3336e0c835d6c6945cc4610d1fea80f4595bf388ad0a7e8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.169.0/lightdash-cli-3.169.0-linux-x64.tar.gz"
    sha256 "cc7ad1b08f642b1f703f4d1ef51ef81569912295935b4ade452704e96559cb36"

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
