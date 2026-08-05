class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.91.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.91.0/lightdash-cli-1.91.0-macos-arm64.tar.gz"
      sha256 "0e8bb53269b2542a81ce00796eac2798071c6b6d425985864e1bc29ad288f09a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.91.0/lightdash-cli-1.91.0-macos-x64.tar.gz"
      sha256 "4345b533f9a9e2a509a580e23572890c07b88ceb970c18013fae9fe730280cf5"
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
