class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.109.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.109.0/lightdash-cli-3.109.0-macos-arm64.tar.gz"
      sha256 "8f413b20064afcbff21ac41502880dd9591da50e6122f2dac2d926fc01e86195"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.109.0/lightdash-cli-3.109.0-macos-x64.tar.gz"
      sha256 "43d79883eb77b99095fa1785ff0e031a6dad55d31eaaf392534581ad04f3115d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.109.0/lightdash-cli-3.109.0-linux-x64.tar.gz"
    sha256 "6d643dd64d1b53fc4f1f40b9f916f466272074b7f12dec4d860df911bfe7c735"

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
