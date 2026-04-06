class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2728.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2728.2/lightdash-cli-0.2728.2-macos-arm64.tar.gz"
      sha256 "786bb4758fcfe171280d55f3c3668aa87ef400304f68335352ea0ba462d2a3db"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2728.2/lightdash-cli-0.2728.2-macos-x64.tar.gz"
      sha256 "4fc7fc4a4f0c752ee42c3af17e57d324b8642add8c33d700b6efe4fe30746620"
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
