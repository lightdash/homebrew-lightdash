class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2443.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2443.2/lightdash-cli-0.2443.2-macos-arm64.tar.gz"
      sha256 "a1e55419b93d9c942d9f4b7e1a22b3e7a1224756ae49e1814a8ba41607ccb133"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2443.2/lightdash-cli-0.2443.2-macos-x64.tar.gz"
      sha256 "e72d03b7c0e58cd8a5984614d99d893f46dd7a93350ad1a03aa5ea1007bbef30"
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
