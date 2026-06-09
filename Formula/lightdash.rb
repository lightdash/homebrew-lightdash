class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3111.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3111.1/lightdash-cli-0.3111.1-macos-arm64.tar.gz"
      sha256 "2861bc3f37ab17af53f7091e44b1bd01e7be74ae74ec707e454f6555bc1d9fc7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3111.1/lightdash-cli-0.3111.1-macos-x64.tar.gz"
      sha256 "ed01de36f368bf74393b94f99718581e96e39ff4a107dd25084515b245ab4a7d"
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
