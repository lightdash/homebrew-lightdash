class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.177.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.177.0/lightdash-cli-1.177.0-macos-arm64.tar.gz"
      sha256 "ea80ca76550a0270115e93fd5cbe63b99f0a424ccb090cc4561c404c02f90e39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.177.0/lightdash-cli-1.177.0-macos-x64.tar.gz"
      sha256 "cc36eedec73474d52fe0321ceaecfce74d0d838036c012f0bd5984512004289a"
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
