class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.12/lightdash-cli-0.2270.12-macos-arm64.tar.gz"
      sha256 "41fce77f25139118a0914ce47ce07491c56e2e9a214cadb99d96e60b6cf545bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.12/lightdash-cli-0.2270.12-macos-x64.tar.gz"
      sha256 "4c77b24514e332a3e1ef818dbea5b759a6c3b624fe6e9becf433686f16098ecd"
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
