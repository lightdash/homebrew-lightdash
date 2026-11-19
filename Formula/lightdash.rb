class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.336.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.336.2/lightdash-cli-3.336.2-macos-arm64.tar.gz"
      sha256 "6bbdc4381ec1e56cbeb6f93d53e12b669773465cb69a7cfaa0721945ffd017d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.336.2/lightdash-cli-3.336.2-macos-x64.tar.gz"
      sha256 "23671196e86cbc2920860a8718da0e0e3fc3bccb1dee34ff49da669015123ded"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.336.2/lightdash-cli-3.336.2-linux-x64.tar.gz"
    sha256 "d5b4980d782c7e602b6ca765acd493c1ef27381c90d4ea1734755461f1bb7a20"

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
