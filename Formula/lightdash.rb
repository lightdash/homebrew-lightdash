class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2214.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.0/lightdash-cli-0.2214.0-macos-arm64.tar.gz"
      sha256 "10b15a74d95153b8867df6b9b4a56783be44018b694ce4b0f0a16506d7cff8f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.0/lightdash-cli-0.2214.0-macos-x64.tar.gz"
      sha256 "998f6ca62f5470043a7b840451d9a7bafdcd6e5190f6710e90c38b0a1cd9b238"
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
