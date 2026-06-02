class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3076.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3076.0/lightdash-cli-0.3076.0-macos-arm64.tar.gz"
      sha256 "ba84267a7b40a750c7e97ebb47ceff68b78b9ecca08f0427477d4709169d3d43"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3076.0/lightdash-cli-0.3076.0-macos-x64.tar.gz"
      sha256 "1114b060fdde4083f73573dcb95d6a4bff404bef284e94b89d93265077a12211"
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
