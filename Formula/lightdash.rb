class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2612.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2612.0/lightdash-cli-0.2612.0-macos-arm64.tar.gz"
      sha256 "a18880a8b4cd252fb61a7dc86287cce6fc87402a75c38a03e01c6be85859cab2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2612.0/lightdash-cli-0.2612.0-macos-x64.tar.gz"
      sha256 "6a698f104755f909f8d34d8f4692fe6b1915eaf6086d5eca4b526a27fbaba1a7"
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
