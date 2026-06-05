class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3098.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3098.1/lightdash-cli-0.3098.1-macos-arm64.tar.gz"
      sha256 "40fc9f843813a9305cc4eeb156c3485468e4d23c936e439844207ac08dbcd611"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3098.1/lightdash-cli-0.3098.1-macos-x64.tar.gz"
      sha256 "552ff6c39286985ae3aed70d650f0becca5172410f4b8d3504be6116bc9f0757"
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
