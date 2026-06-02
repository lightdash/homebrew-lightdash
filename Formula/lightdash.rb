class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3072.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3072.1/lightdash-cli-0.3072.1-macos-arm64.tar.gz"
      sha256 "b51077a99e86995762d7c1da909dfff1f23b7f178d70f5ca7b47380a35e1cebe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3072.1/lightdash-cli-0.3072.1-macos-x64.tar.gz"
      sha256 "fa9299409b6eb4e4200ed90f6de0f23116739aac660466b182d11750de67ea62"
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
