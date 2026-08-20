class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.212.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.212.3/lightdash-cli-1.212.3-macos-arm64.tar.gz"
      sha256 "93824f2960daec59de3b99d089ab9554930c904c03cd941acef793b18c08c725"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.212.3/lightdash-cli-1.212.3-macos-x64.tar.gz"
      sha256 "f6f5947b9244d11f79e3bbb8dc640cc25737abfcd1a2d69f44ec2991ae9dab06"
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
