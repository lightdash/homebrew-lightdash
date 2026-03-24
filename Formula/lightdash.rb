class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2657.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.6/lightdash-cli-0.2657.6-macos-arm64.tar.gz"
      sha256 "1c78158b59a0da6a9307c3892c8d5b1caae18b120ed665f6f790c035f334969f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.6/lightdash-cli-0.2657.6-macos-x64.tar.gz"
      sha256 "c7b47302a2014bd174342b1fa9c061a36023bfe9dbe29303abd9dd0f4ce6aff9"
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
