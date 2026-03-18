class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2638.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2638.1/lightdash-cli-0.2638.1-macos-arm64.tar.gz"
      sha256 "1709080c328bfa10daf9131fe2df7e973697a6eee8f52dbf589af8e9dc307712"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2638.1/lightdash-cli-0.2638.1-macos-x64.tar.gz"
      sha256 "dc88f4c0ed0ebd8094126e6f95411f56aef154f0eeff2e0610a90cc99f8cc9b7"
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
