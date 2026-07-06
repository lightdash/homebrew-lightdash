class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3316.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3316.0/lightdash-cli-0.3316.0-macos-arm64.tar.gz"
      sha256 "89e745511f9133184acfbc3776cc4368bbfb325d3b3e03f17704d0841c083dac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3316.0/lightdash-cli-0.3316.0-macos-x64.tar.gz"
      sha256 "c8d1786111adf662e96d304fe8d0096112013ac948a09e34289dd4be750fd673"
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
