class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2492.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2492.0/lightdash-cli-0.2492.0-macos-arm64.tar.gz"
      sha256 "26bd8e036822fff3e471820c2892b4608d9e076754a0f2db930492d6a9faa259"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2492.0/lightdash-cli-0.2492.0-macos-x64.tar.gz"
      sha256 "56ac2bab7eeb909b8f779664c916546891642251b6261e49a1b844e0ecb00ec1"
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
