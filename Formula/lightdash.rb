class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2225.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2225.0/lightdash-cli-0.2225.0-macos-arm64.tar.gz"
      sha256 "d11d8cb79dd521546b8c5cef0b5ea85e6b8b16f719ec38862d8a32585524d62f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2225.0/lightdash-cli-0.2225.0-macos-x64.tar.gz"
      sha256 "f2bbe0466d9c9d7c19c7a9bc1e22b350295ddd0f6fa777a333c2c1d71bc64ecd"
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
