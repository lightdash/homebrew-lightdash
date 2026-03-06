class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2581.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2581.0/lightdash-cli-0.2581.0-macos-arm64.tar.gz"
      sha256 "a1e35f2699fd13d00ce75638f6dbfb0d53a6d67c5da4499a13adfbb5bdadfa3a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2581.0/lightdash-cli-0.2581.0-macos-x64.tar.gz"
      sha256 "41ebdb4eccd6f1959700669ad62c3533bfb7396c1ab380301715b8b1e5feaac8"
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
