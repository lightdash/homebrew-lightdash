class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2578.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2578.0/lightdash-cli-0.2578.0-macos-arm64.tar.gz"
      sha256 "bb0f19360a5e60c3045e86a9bc7cc0e3bf7c686c44e7a081076b412d996557dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2578.0/lightdash-cli-0.2578.0-macos-x64.tar.gz"
      sha256 "6332f02f93c5a87ae27bbe93e41515c511745d0465560d953cd1b5960d1a8003"
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
