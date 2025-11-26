class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2209.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.1/lightdash-cli-0.2209.1-macos-arm64.tar.gz"
      sha256 "b62b0d56e7050b3c0887bba51a5cfdc3ac68bdfd170a6df556463dea25d1621f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.1/lightdash-cli-0.2209.1-macos-x64.tar.gz"
      sha256 "a841be0114bb354179c52bff17ce85201988400dd51a6d5f4a502186527e116a"
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
