class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.220.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.220.1/lightdash-cli-1.220.1-macos-arm64.tar.gz"
      sha256 "5c7d7e6bcf4366f6945fa8a1ec2dfccc11efcae6e64b28389ea6fb333f37cba9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.220.1/lightdash-cli-1.220.1-macos-x64.tar.gz"
      sha256 "d56096ecc42fb054868be9ca0ec4661845fd7085c7618c4de413cbf8dba6f895"
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
