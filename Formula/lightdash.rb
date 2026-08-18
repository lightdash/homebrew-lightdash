class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.193.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.193.1/lightdash-cli-1.193.1-macos-arm64.tar.gz"
      sha256 "45a01336327228097ecab586264c4a145451d05f9f4475181780561adb7706cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.193.1/lightdash-cli-1.193.1-macos-x64.tar.gz"
      sha256 "c5e6f6c0e56cc84653dd70c4c55d1878dbea80a6d2062be3967f7b98be4528c9"
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
