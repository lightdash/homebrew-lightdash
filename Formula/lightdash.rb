class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2919.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2919.1/lightdash-cli-0.2919.1-macos-arm64.tar.gz"
      sha256 "d10b1837a8ae33e936336dd7550f1fb5fc8f45d2a606f57f8e2c106ed7f04232"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2919.1/lightdash-cli-0.2919.1-macos-x64.tar.gz"
      sha256 "da3cb6d51846158936b8e3a556eff7f0969f2d3c7e60b7d91873e71709579265"
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
