class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2378.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2378.1/lightdash-cli-0.2378.1-macos-arm64.tar.gz"
      sha256 "7fe0f8c37f3224fb3e4aeb5ba5e716c84fd4e53dc78f46ad0470fc74dd2a82c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2378.1/lightdash-cli-0.2378.1-macos-x64.tar.gz"
      sha256 "b4fc4be5f64e6c53efca0027b85d091ff059204573f9f952264cbfc6a5325d76"
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
