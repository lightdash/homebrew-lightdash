class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3024.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.2/lightdash-cli-0.3024.2-macos-arm64.tar.gz"
      sha256 "e6d722a79734b405ee81e640605cff63758d6f8e7282a83bf506d048451d8684"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.2/lightdash-cli-0.3024.2-macos-x64.tar.gz"
      sha256 "4263c29da6d03cc4f1850f4a66bed9a5a65b17f4b8a4e3309549f3705215ecb9"
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
