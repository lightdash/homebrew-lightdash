class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2892.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2892.0/lightdash-cli-0.2892.0-macos-arm64.tar.gz"
      sha256 "9bc7240a4271e9c26b27c599f65466d31dd11c65d13e60975e1da774335bc4a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2892.0/lightdash-cli-0.2892.0-macos-x64.tar.gz"
      sha256 "7fc742967e28141d4dc86231466f833d49ee2d7cfc44199b62a3f7806e483dba"
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
