class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2733.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2733.0/lightdash-cli-0.2733.0-macos-arm64.tar.gz"
      sha256 "98e8276d13e64b11db358f0ae7ab8bd4d03e956fc8d042f68730df47e8c469f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2733.0/lightdash-cli-0.2733.0-macos-x64.tar.gz"
      sha256 "cdcd4d0a623a59c69738d2fefe88b9fa3c67b687929d0abd738aab7322eeac9f"
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
