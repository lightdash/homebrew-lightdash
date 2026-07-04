class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3309.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3309.0/lightdash-cli-0.3309.0-macos-arm64.tar.gz"
      sha256 "7021f49b2e3a647e506b1833455a736f688f8d680e0a3a73299ec3ed6f386e8e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3309.0/lightdash-cli-0.3309.0-macos-x64.tar.gz"
      sha256 "774fcf0d7f787e8a107703cb156a08bf3bfe1d37a1d183313ceecb1fe3dbae64"
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
