class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.163.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.163.0/lightdash-cli-2.163.0-macos-arm64.tar.gz"
      sha256 "420693c430345d6dee177ff1543020cc9b05889967c3a61f9e1e2e151f10d466"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.163.0/lightdash-cli-2.163.0-macos-x64.tar.gz"
      sha256 "1004c3ca9cb20d1b8766466c108fa1e46d65af84af98a41388ab4174ecda5344"
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
