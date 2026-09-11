class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.199.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.199.0/lightdash-cli-2.199.0-macos-arm64.tar.gz"
      sha256 "3d85c6eb140b98f92c09d8d5c904225c5f82fe27511e0234e2b0f5524865ce56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.199.0/lightdash-cli-2.199.0-macos-x64.tar.gz"
      sha256 "82e327b4b7e52498989215c9a66e393f6ed43b71a6fb96c396091285b656b5a7"
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
