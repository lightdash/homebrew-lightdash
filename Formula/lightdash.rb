class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2580.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2580.0/lightdash-cli-0.2580.0-macos-arm64.tar.gz"
      sha256 "a121cfa214d7c85fdf25c071c945b1b38743b864aa75148a7a965943f6218109"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2580.0/lightdash-cli-0.2580.0-macos-x64.tar.gz"
      sha256 "1d53a5728dfabcbb8644c9f53e325898817c38e70671f00eb54f9443f3490b53"
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
