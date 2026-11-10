class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.195.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.195.2/lightdash-cli-3.195.2-macos-arm64.tar.gz"
      sha256 "0d57044654d011f76b0c89d64dfb69dae6952fb62840fe3adc9cc1654678c1cd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.195.2/lightdash-cli-3.195.2-macos-x64.tar.gz"
      sha256 "77cf986109d39c3ab1f5007364e7b74caacdc52772e1bb0c54bbbbb85a92ed46"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.195.2/lightdash-cli-3.195.2-linux-x64.tar.gz"
    sha256 "b44f83d33175816d60a89de9129143053179024d9d4c535e91998b08cd721669"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
