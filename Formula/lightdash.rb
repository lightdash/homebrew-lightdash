class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2662.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2662.0/lightdash-cli-0.2662.0-macos-arm64.tar.gz"
      sha256 "f7f6f9ac7e0ca48223e547f5a31db706d18cc830a4e8b54bdaf3a4a44b9ab8b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2662.0/lightdash-cli-0.2662.0-macos-x64.tar.gz"
      sha256 "12f1ff4392e71abe34479ee3209923869da2022d55b8ca9ba64f3bc5eabcda1f"
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
