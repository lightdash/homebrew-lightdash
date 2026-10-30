class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.108.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.1/lightdash-cli-3.108.1-macos-arm64.tar.gz"
      sha256 "3fd957ac16515a731b24e0b0e8afa8781d9e4689bf9fd3d83550af3a9e96d235"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.1/lightdash-cli-3.108.1-macos-x64.tar.gz"
      sha256 "63785c95a2ca35ddd3ffc16506160b935231fd44b244454fb8e1f561e7c5fa44"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.108.1/lightdash-cli-3.108.1-linux-x64.tar.gz"
    sha256 "b3778cd0e8820c5ee1c4a47abd759454f1112b78399ddb7229245604f8661956"

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
