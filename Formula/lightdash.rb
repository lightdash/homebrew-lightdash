class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2741.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2741.0/lightdash-cli-0.2741.0-macos-arm64.tar.gz"
      sha256 "90fe08605566bc1beca1f9e821ef9de663648571de4a3b0f8a00e97d89015494"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2741.0/lightdash-cli-0.2741.0-macos-x64.tar.gz"
      sha256 "bdda5c01bd425a74cfbe4010493769420720120e8ae7434dc6b43f67f4cb87c3"
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
