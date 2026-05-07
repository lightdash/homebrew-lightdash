class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2898.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2898.0/lightdash-cli-0.2898.0-macos-arm64.tar.gz"
      sha256 "8a1bc13f1991f99a751afacdb696fbc4bf161bff017c617038a594bfb08036ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2898.0/lightdash-cli-0.2898.0-macos-x64.tar.gz"
      sha256 "127bb52cef62d35ee57db8e8e5754524f0f2aa3a7f8fba52708d5866639cc593"
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
