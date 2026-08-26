class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.5.2/lightdash-cli-2.5.2-macos-arm64.tar.gz"
      sha256 "92b314c1d6fa4077b1c9ec4748dfc03471066f5eeeae961be22a51be43fa0ea0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.5.2/lightdash-cli-2.5.2-macos-x64.tar.gz"
      sha256 "d1a3f19b5660c883c2ab47b0921a66054c2ada0d605641d732c9b14a9ada2650"
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
