class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2904.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.5/lightdash-cli-0.2904.5-macos-arm64.tar.gz"
      sha256 "c28f9b292117d2b69092555cf3328fa05ed5c680b3385d55a446a9b61c69c467"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.5/lightdash-cli-0.2904.5-macos-x64.tar.gz"
      sha256 "ade0d5505a5e510c52b8443868f4a944d74c4a272bcc7f163e18ed521129ca02"
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
