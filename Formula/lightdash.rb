class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.236.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.236.2/lightdash-cli-1.236.2-macos-arm64.tar.gz"
      sha256 "69a09ff8f5970eb08f4d966b190b675c17c85d396ab8d69a55dc06b8ceabfe63"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.236.2/lightdash-cli-1.236.2-macos-x64.tar.gz"
      sha256 "660793352e9eecd47df45f82857b4ae59937ba5a359db31dcc2342d2daa5f07f"
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
