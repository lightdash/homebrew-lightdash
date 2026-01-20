class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2355.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2355.1/lightdash-cli-0.2355.1-macos-arm64.tar.gz"
      sha256 "1fb691d9399ecb95d749a7b88d5021ce071af340e247c4e2d12713016cbdf761"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2355.1/lightdash-cli-0.2355.1-macos-x64.tar.gz"
      sha256 "a59d00da72f6006c3d40e21e1cb24e865e7776ef6b9794ab0678d1075533df57"
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
