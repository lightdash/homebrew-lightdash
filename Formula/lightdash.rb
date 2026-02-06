class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2433.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2433.1/lightdash-cli-0.2433.1-macos-arm64.tar.gz"
      sha256 "c40ce381506dacc41704d2744d1030e1cb3d81c557b6bdfb8996905a3673495f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2433.1/lightdash-cli-0.2433.1-macos-x64.tar.gz"
      sha256 "0bbe9e2ae343e17a66c5240b912cad851f0cadaf5f1a9fc3b08bbd4131559883"
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
