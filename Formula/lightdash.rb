class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.113.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.113.0/lightdash-cli-2.113.0-macos-arm64.tar.gz"
      sha256 "d602d2e173096112ccf4e4042a36df15ed0259ee6e7a7b70a68d84d26ba1901a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.113.0/lightdash-cli-2.113.0-macos-x64.tar.gz"
      sha256 "d1e0eaea8b3f1ce64e0f96084c6dd6ef53eea0cbeabeef960cc6f7c1e6394771"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
