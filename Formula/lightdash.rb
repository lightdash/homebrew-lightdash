class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.212.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.212.0/lightdash-cli-2.212.0-macos-arm64.tar.gz"
      sha256 "ca127166e5110c7f7c638e62911b31735298dd0dd9dc2c9f2c084202754a9c35"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.212.0/lightdash-cli-2.212.0-macos-x64.tar.gz"
      sha256 "ee542aea0ad0b49cece9760ab92adedf3e0c3fdf219a8a30bcc0cc0246926d2a"
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
