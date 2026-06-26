class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3258.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3258.1/lightdash-cli-0.3258.1-macos-arm64.tar.gz"
      sha256 "3b8d13c46beccd079825b69ae636cd50225451dd23be2d575549162ff39eacb3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3258.1/lightdash-cli-0.3258.1-macos-x64.tar.gz"
      sha256 "a28397a88b2ade5da303d25b3a6ae8fe7ba007e4d204f549e4577e90775fab8a"
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
