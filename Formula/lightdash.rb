class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.256.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.256.0/lightdash-cli-1.256.0-macos-arm64.tar.gz"
      sha256 "669e70fe091760261d21cdc81a2c6b69bc87cc393cad93818484fbfd68d6268d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.256.0/lightdash-cli-1.256.0-macos-x64.tar.gz"
      sha256 "5609183e4b381736391b41aa1760e0cce5dc128aa85bfd8c8f967b888240f877"
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
