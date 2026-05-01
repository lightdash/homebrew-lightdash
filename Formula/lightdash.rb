class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2855.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2855.0/lightdash-cli-0.2855.0-macos-arm64.tar.gz"
      sha256 "6197a36b87021d5342b2c56a8e04f1fec27deb92fb8a68e7bab9fe7729160139"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2855.0/lightdash-cli-0.2855.0-macos-x64.tar.gz"
      sha256 "acec6bee91ec09fc32140c09bf6a8bacf05b4b44358d5f25fc2632740cd160ff"
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
