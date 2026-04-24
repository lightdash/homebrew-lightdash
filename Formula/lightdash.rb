class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2797.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2797.0/lightdash-cli-0.2797.0-macos-arm64.tar.gz"
      sha256 "c2625848c4a08f9791a2d1993bf1afdb054089fd4fb32e53a601421deb6b187b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2797.0/lightdash-cli-0.2797.0-macos-x64.tar.gz"
      sha256 "a426072725e5b66ce31d2654fb4c8c44de12a4e57e9eea061fc9ac7dd3aa162a"
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
