class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.235.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.2/lightdash-cli-1.235.2-macos-arm64.tar.gz"
      sha256 "f2147b6ca481500c5d051fa4491744f1ad776968a14a161709e9a604541b23e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.2/lightdash-cli-1.235.2-macos-x64.tar.gz"
      sha256 "86dfc458b85ef40f222275c2f44f0ec290eb7b73b1f9d927e9a2bbd3bc04ae25"
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
