class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2820.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2820.0/lightdash-cli-0.2820.0-macos-arm64.tar.gz"
      sha256 "1ee8825024c547dc590cdd3d0c55962f07ed20b5a6c508a1827ef33f7e259951"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2820.0/lightdash-cli-0.2820.0-macos-x64.tar.gz"
      sha256 "ea175af275bc8ad2a9fe8ea1ddae5b613d008c09bc42f6dbdc67ff5e646ac1e5"
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
