class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3084.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3084.0/lightdash-cli-0.3084.0-macos-arm64.tar.gz"
      sha256 "46669d83d2d9b564dc8822683f82e914bf79cbf05ca0e19a6763066135a29875"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3084.0/lightdash-cli-0.3084.0-macos-x64.tar.gz"
      sha256 "2e8fbbd01476e6a8c119431972ad579d8567eae8d15267bf3dec517f3f21a63a"
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
