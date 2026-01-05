class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2295.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2295.0/lightdash-cli-0.2295.0-macos-arm64.tar.gz"
      sha256 "a530d00f2810120641733a2de610ab5b4444cd52ed22c3eed26c66928d518c0c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2295.0/lightdash-cli-0.2295.0-macos-x64.tar.gz"
      sha256 "6862eb3402eab43af13ca888fbd3e346641eec35e9b502d1a480a35d82bf8341"
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
