class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.66.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.66.0/lightdash-cli-1.66.0-macos-arm64.tar.gz"
      sha256 "3d171db7c192902f7472e81e28d484c4b1cbc0890ce11b444d08121873a665b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.66.0/lightdash-cli-1.66.0-macos-x64.tar.gz"
      sha256 "e75aa46e1eda0d4b1806aa78bc4692c02f77770d62c98684ddba8ab54f728f4f"
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
