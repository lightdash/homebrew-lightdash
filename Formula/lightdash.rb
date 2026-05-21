class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3003.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3003.0/lightdash-cli-0.3003.0-macos-arm64.tar.gz"
      sha256 "a84634457a58939a5d195cd96e0e38d9375f6777be487bee3ab240fed070c886"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3003.0/lightdash-cli-0.3003.0-macos-x64.tar.gz"
      sha256 "acd4a8bf34b14724049e562eae262d4bff981e676af9c552a6e673babad2ac18"
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
