class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.49.0/lightdash-cli-2.49.0-macos-arm64.tar.gz"
      sha256 "7a3adf800516f9df9f37d6dfc58cb04bd26265b8ac4045276194b7e96e6473e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.49.0/lightdash-cli-2.49.0-macos-x64.tar.gz"
      sha256 "9903aac12421a3bf47dd07358149161b85d6406c6a6f5046d0181d83beb2e06e"
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
