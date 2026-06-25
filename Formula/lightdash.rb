class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3244.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3244.0/lightdash-cli-0.3244.0-macos-arm64.tar.gz"
      sha256 "3695764ddfd71709e1c0d981e37dd068fc966ec9a3b0e570eb74c1938c70a8dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3244.0/lightdash-cli-0.3244.0-macos-x64.tar.gz"
      sha256 "3e76fa94caafd7f95c3c3bea0c5ac4c4ebef08327f251c9e2cb448d1459911e1"
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
