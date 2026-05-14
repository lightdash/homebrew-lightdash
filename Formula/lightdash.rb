class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2933.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2933.1/lightdash-cli-0.2933.1-macos-arm64.tar.gz"
      sha256 "5811dccfb67cf487dd97f55bc5ad5921de2ee7b4429c702a87a72db06da3a696"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2933.1/lightdash-cli-0.2933.1-macos-x64.tar.gz"
      sha256 "bde5e8d67e2d03f029e0880d1b0f0312a9b48627e6916bbfaaa90bbba0e3fcbd"
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
