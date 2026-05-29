class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3052.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3052.1/lightdash-cli-0.3052.1-macos-arm64.tar.gz"
      sha256 "226278c86e3953baed763cbf43b2a1d980182856bb9f913a0ef89f16c6cfe013"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3052.1/lightdash-cli-0.3052.1-macos-x64.tar.gz"
      sha256 "796613bee2300b792bbac04504294d436046d749afcf880773ebfee3521e9fb8"
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
