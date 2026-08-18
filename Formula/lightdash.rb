class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.179.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.179.0/lightdash-cli-1.179.0-macos-arm64.tar.gz"
      sha256 "fae62ee8519348254f77e7fdaa62b87278f4cb8e6416557c0b055bb9f97037fe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.179.0/lightdash-cli-1.179.0-macos-x64.tar.gz"
      sha256 "9261d2403226c231982a35f3c22da9f2b16d9dfb6dc44bdb560834b9edba8551"
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
