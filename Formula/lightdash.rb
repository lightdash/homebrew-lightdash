class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.200.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.200.0/lightdash-cli-3.200.0-macos-arm64.tar.gz"
      sha256 "c647f6731591ed59f13ea8e3bda6374fb76712fb5bb267a94f3c20cc300df354"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.200.0/lightdash-cli-3.200.0-macos-x64.tar.gz"
      sha256 "feceb04f6464155dd7c837f407e7c1ebf582b473bfaf3f97af00c8a8f916fde7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.200.0/lightdash-cli-3.200.0-linux-x64.tar.gz"
    sha256 "7419f901ac747de49d025468cbd4554a83f67668b25c1a58ad61ba5900969b20"

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
