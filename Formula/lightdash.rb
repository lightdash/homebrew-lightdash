class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3183.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3183.0/lightdash-cli-0.3183.0-macos-arm64.tar.gz"
      sha256 "0c9a1a93f35b7d4c453411d0c28dd18132937dfd93333a59db0fcf29b5fb94bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3183.0/lightdash-cli-0.3183.0-macos-x64.tar.gz"
      sha256 "05c8d47a893928ac95edd2394c24189e9c0a342285a2c3ee2179841be688d10d"
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
