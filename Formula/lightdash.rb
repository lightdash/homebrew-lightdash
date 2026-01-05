class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2296.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2296.1/lightdash-cli-0.2296.1-macos-arm64.tar.gz"
      sha256 "f7582e868def30ba9734bff432244394742fdc8baab2d7918765a2d9afce90c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2296.1/lightdash-cli-0.2296.1-macos-x64.tar.gz"
      sha256 "faf0b4c1f7803a0de492503e686219c1ae0ca979630b1536a6079604dfd41e07"
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
