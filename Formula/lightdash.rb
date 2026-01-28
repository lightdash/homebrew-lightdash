class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2385.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2385.1/lightdash-cli-0.2385.1-macos-arm64.tar.gz"
      sha256 "0d49b761bcfada00a26c47d91ddf5d55cf18cb761b8f16110a9b2efd42627077"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2385.1/lightdash-cli-0.2385.1-macos-x64.tar.gz"
      sha256 "a46be5f010060c2c7774d222f5d626c67f375ce360035a96f48dfa5c5b86b894"
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
