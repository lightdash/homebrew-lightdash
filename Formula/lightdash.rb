class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2989.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2989.0/lightdash-cli-0.2989.0-macos-arm64.tar.gz"
      sha256 "52ea8153987b30599e91fe54317fce362605d6e2bf8bad940e90ad719d1520f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2989.0/lightdash-cli-0.2989.0-macos-x64.tar.gz"
      sha256 "88db00dd87826bbd0356a8b14267208c5b69abb2a9e421fc9849355d884e3f98"
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
