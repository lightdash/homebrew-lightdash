class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2909.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2909.0/lightdash-cli-0.2909.0-macos-arm64.tar.gz"
      sha256 "2e2853da70080c9464ff7798d88942b9771d5bdf40d150186b66c060bae60c50"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2909.0/lightdash-cli-0.2909.0-macos-x64.tar.gz"
      sha256 "b9cf3fecb1f85e2cab539d906b92711223a01c57e57267ed02dda851aecedb3c"
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
