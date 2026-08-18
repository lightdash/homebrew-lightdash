class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.173.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.173.0/lightdash-cli-1.173.0-macos-arm64.tar.gz"
      sha256 "73392aae8e8e88ca65bae01d107ba21998d5b07496672b9d7b579b817e5877ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.173.0/lightdash-cli-1.173.0-macos-x64.tar.gz"
      sha256 "da2cff8026163c293ffe890231b0e2a0aeb66921522375a3375e191092770b7e"
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
