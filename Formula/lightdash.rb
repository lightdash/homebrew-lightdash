class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.41.0/lightdash-cli-1.41.0-macos-arm64.tar.gz"
      sha256 "e9213ed4c9aa3741f8e5862168a123269d3783590f13f9f42dc357b0faf1d156"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.41.0/lightdash-cli-1.41.0-macos-x64.tar.gz"
      sha256 "458d9f3b8197f8b13611249e7ea44f5399f731df2c1e6ccb80653a58eb6018fd"
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
