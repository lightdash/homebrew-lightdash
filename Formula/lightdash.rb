class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.157.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.4/lightdash-cli-1.157.4-macos-arm64.tar.gz"
      sha256 "326de3e24c6dec75d6a6fd8779092e1b92036c74f95d16808f10e80017c17a4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.4/lightdash-cli-1.157.4-macos-x64.tar.gz"
      sha256 "6c9b950e11567ee15a2f528c44b83cde777fc0f5474ca141aad5d7b2ec42165c"
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
